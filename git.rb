require "HTTParty"

class GitApp
attr_reader :username
  def initialize(username)
    @username = username
  end

  def get_repo
    HTTParty.post("https://api.github.com/users/#{username}/repos")
  end

end
