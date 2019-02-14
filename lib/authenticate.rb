require_relative('user.rb')

class Authenticate
  def initialize(name, bio, age, password)
    @user = User.new(name, bio, age, password)
    @authenticate = false
    @password = password
  end

  def authenticate(candidate_password)
    @authenticate = true if candidate_password == @password
  end

  def profile
    return "Incorrect password" unless @authenticate == true
    @user.profile
  end
end
