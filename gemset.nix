{
  backports = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0kdi20ywa4k1x2f5v2gnx60fc9apbkw6dgk64kak9dmar4qzkghb";
      type = "gem";
    };
    version = "3.11.1";
  };
  multi_json = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1rl0qy4inf1mp8mybfk56dfga0mvx97zwpmq5xmiwl5r770171nv";
      type = "gem";
    };
    version = "1.13.1";
  };
  mustermann = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "07sb7fckrraqh48fjnqf6yl7vxxabfx0qrsrhfdz67pd838g4k8g";
      type = "gem";
    };
    version = "1.0.2";
  };
  rack = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1mfriw2r2913dv8qf3p87n7yal3qfsrs478x2qz106v8vhmxa017";
      type = "gem";
    };
    version = "2.0.4";
  };
  rack-protection = {
    dependencies = ["rack"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0ywmgh7x8ljf7jfnq5hmfzki3f803waji3fcvi107w7mlyflbng7";
      type = "gem";
    };
    version = "2.0.1";
  };
  sinatra = {
    dependencies = ["mustermann" "rack" "rack-protection" "tilt"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "03ns7d8gcilsdmvlijyaqb3rb7sjj6hcqn9sx1cc3ynwv2cs59wv";
      type = "gem";
    };
    version = "2.0.1";
  };
  sinatra-contrib = {
    dependencies = ["backports" "multi_json" "mustermann" "rack-protection" "sinatra" "tilt"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0cv6bmwr4m3565zcvk1acvi4mivcwh4d1ccifikcp3x7phlcr028";
      type = "gem";
    };
    version = "2.0.1";
  };
  tilt = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0020mrgdf11q23hm1ddd6fv691l51vi10af00f137ilcdb2ycfra";
      type = "gem";
    };
    version = "2.0.8";
  };
}