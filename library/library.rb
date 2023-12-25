require_relative 'user.rb'
require 'securerandom'

class Library 
    attr_accessor :users 

    def initialize 
        @users = [] 
    end 


    def register_user(name, password, role = 'user') 
        
        if @users.any? { |user| user.name == name } 
            puts "username is already taken" 
            return 
        end 

        # user_id = generate_user_id 
        user = User.new(name, password, role) 
        @users << user 
        
        puts "user #{name} hass successfully regestered suuccessfully"
    end 

    def login_user(username, password) 
        user = @users.find { |user| user.name == username } 

        if user && user.authenticate(password) 
            user.login
        else 
            puts "invalid credintials" 
        end 
    end  

    
    def logout_user(username) 
        user = @users.find { |user| user.name == username } 

        if user  
            user.logout
        else 
            puts "User not found" 
        end 
    end 


    def logged_in_users 
        logged_in_users = @users.select(&:logged_in?) 
        File.open('audit_log.txt', 'a+') do |f| 
            f.puts "Logged in users: #{logged_in_users.map(&:name).join(', ')}"
        end 
    end 

    private 

    # def generate_user_id
    #     SecureRandom.uuid
    # end 

end 
