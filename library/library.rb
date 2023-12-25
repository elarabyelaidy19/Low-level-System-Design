require_relative 'user.rb'
require 'securerandom'
class Library 
    attr_accessor :users 

    def initialize 
        @users = [] 
    end 


    def register_user(name, email, password) 
        user_id = generate_user_id 

        user = User.new(name, user_id, email, password) 
        @users << user 
        
        puts "user #{name} hass successfully regestered with user id #{user_id}"
    end 


    private 

    def generate_user_id
        SecureRandom.uuid
    end 

end 
