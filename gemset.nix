{
  activesupport = {
    dependencies = ["concurrent-ruby" "i18n" "minitest" "tzinfo"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1iya7vxqwxysr74s7b4z1x19gmnx5advimzip3cbmsd5bd43wfgz";
      type = "gem";
    };
    version = "5.2.2";
  };
  backports = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1hshjxww2h7s0dk57njrygq4zpp0nlqrjfya7zwm27iq3rhc3y8g";
      type = "gem";
    };
    version = "3.11.4";
  };
  concurrent-ruby = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ixcx9pfissxrga53jbdpza85qd5f6b5nq1sfqa9rnfq82qnlbp1";
      type = "gem";
    };
    version = "1.1.4";
  };
  i18n = {
    dependencies = ["concurrent-ruby"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "079sqshk08mqs3d6yzvshmqf4s175lpi2pp71f1p10l09sgmrixr";
      type = "gem";
    };
    version = "1.2.0";
  };
  minitest = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0icglrhghgwdlnzzp4jf76b0mbc71s80njn5afyfjn4wqji8mqbq";
      type = "gem";
    };
    version = "5.11.3";
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
      sha256 = "0lycgkmnyy0bf29nnd2zql5a6pcf8sp69g9v4xw0gcfcxgpwp7i1";
      type = "gem";
    };
    version = "1.0.3";
  };
  rack = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1pcgv8dv4vkaczzlix8q3j68capwhk420cddzijwqgi2qb4lm1zm";
      type = "gem";
    };
    version = "2.0.6";
  };
  rack-protection = {
    dependencies = ["rack"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0ylx74ravz7nvnyygq0nk3v86qdzrmqxpwpayhppyy50l72rcajq";
      type = "gem";
    };
    version = "2.0.4";
  };
  sinatra = {
    dependencies = ["mustermann" "rack" "rack-protection" "tilt"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1mxwlhx886s1b7pcnwa0qsadqanj5m548xaf34afn1lr5jyq981h";
      type = "gem";
    };
    version = "2.0.4";
  };
  sinatra-contrib = {
    dependencies = ["activesupport" "backports" "multi_json" "mustermann" "rack-protection" "sinatra" "tilt"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1q5bzjw85wi49yz1h7bxl0jkszkx8vk4k126kxvlf85zsgr3g5i4";
      type = "gem";
    };
    version = "2.0.4";
  };
  thread_safe = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0nmhcgq6cgz44srylra07bmaw99f5271l0dpsvl5f75m44l0gmwy";
      type = "gem";
    };
    version = "0.3.6";
  };
  tilt = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0ca4k0clwf0rkvy7726x4nxpjxkpv67w043i39saxgldxd97zmwz";
      type = "gem";
    };
    version = "2.0.9";
  };
  tzinfo = {
    dependencies = ["thread_safe"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1fjx9j327xpkkdlxwmkl3a8wqj7i4l4jwlrv3z13mg95z9wl253z";
      type = "gem";
    };
    version = "1.2.5";
  };
}