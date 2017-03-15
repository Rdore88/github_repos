require "sinatra"
require_relative "git"

  get "/homepage" do
    erb :"git_erb.html"
  end

  post "/repos" do
     body GitApp.new(username).get_repo
  end
