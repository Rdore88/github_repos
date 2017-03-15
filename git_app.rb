require "sinatra"
require_relative "git"
require "pry"

  get "/homepage" do
    erb :"git_erb.html"
  end


  post "/repos" do
    username = params["username"]
    @repos = GitApp.new(username).get_repo
    erb :"repos.html"
  end
