#!/usr/bin/env ruby

require "fileutils"
require "sinatra"
require ARGV.first

if DEVELOPMENT
  require "sinatra/reloader"
end

use Rack::Auth::Basic, "Protected Area" do |username, password|
  username == HTTP_USERNAME && password == HTTP_PASSWORD
end

# TODO : optionally listen on unix domain socket.
set :bind, BIND
set :port, PORT

# Helps debug stuff.
get "/" do
  "Hi! if you see this, you're allowed!"
end

# Pass-through to the store path.
# Ideally, nginx should serve those directly instead of going
# through sinatra, but eh, this makes development easier.
get "/store/*" do |path|
  Dir.chdir(STORE_PATH) do
    return status(404) unless File.exists?(path)
    send_file File.join(STORE_PATH, path)
  end
end

# Stores the files given.
# This assumes a complete and total trust of the client.
# This **will** replace existing files.
put "/store/*" do |path|
  FileUtils.mkdir_p(STORE_PATH)
  Dir.chdir(STORE_PATH) do
    dir = path.split("/")
    dir.pop

    FileUtils.mkdir_p(dir)
    File.open(path, "w+") do |file|
      file.write(request.body.read)
    end
  end

  "Thanks!"
end
