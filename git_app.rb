require "sinatra"
require_relative "git"
require "pry"

  get "/homepage" do
    erb :"git_erb.html"
  end


  post "/repos" do
    username = params["username"]
    body(GitApp.new(username).get_repo).to_json
  end
