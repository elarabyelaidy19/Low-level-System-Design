require 'digest'

class User 
    attr_accessor :name, :id, :password, :role
   
    def initialize(name, password, role = 'user') 
        @name = name
        @id = SecureRandom.uuid 
        @password = hash_password(password)
        @role = role  
        @logged_in = false 
    end 


    def authenticate(entered_password) 
        @password == hash_password(entered_password)
    end 

    def login 
        @logged_in = true 
        puts "User '#{name}' logged in successfully. Role: #{role}"
    end 

    def logout 
        @logged_in = false 
        puts "User #{name} loggedout" 
    end 
    
    
    def logged_in? 
        @logged_in
    end 
    
    private 

    def hash_password(password) 
        Digest::SHA256.hexdigest(password)
    end 

end 