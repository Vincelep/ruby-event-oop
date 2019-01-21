require 'pry'

class User
	attr_accessor :email
	@@user_all = []

	  def initialize(email_to_save)
    @email = email_to_save
    @@user_all << @email
  end

	def self.all
    return @@user_all
  end

  def self.find_by_email(email_to_save)
  	User.new(email_to_save)
  end

end


#binding.pry
#puts "end of file"