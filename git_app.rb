require "sinatra"
require_relative "git"
require "pry"

  get "/homepage" do
    erb :"git_erb.html"
  end


  post "/repos" do
    username = params["username"]
    binding.pry
    @repos = GitApp.new(username).get_repo
    @info = GitApp.new(username).get_info
    erb :"repos.html"
  end
