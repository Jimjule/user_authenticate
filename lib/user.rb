require_relative('authenticate.rb')

class User

  attr_reader :name
  attr_reader :bio
  attr_reader :age
  attr_reader :password

  def initialize(name, bio, age, password)
    @name = name
    @bio = bio
    @age = age
    @password = password
  end

  def profile
    "#{@name}, born in #{birth_year}: #{@bio}"
  end

  private

  def birth_year
    Time.new.year - @age
  end
end
