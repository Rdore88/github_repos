require "sinatra"
require "httparty"

  get "/homepage" do
    erb :"git_erb.html"
  end
