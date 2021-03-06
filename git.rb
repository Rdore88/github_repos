require "HTTParty"

class GitApp
attr_reader :username

  def initialize(username)
    @username = username
  end

  def get_repo
    HTTParty.get("https://api.github.com/users/#{username}/repos")
  end

  def get_info
    HTTParty.get("https://api.github.com/users/#{username}")
  end

end
