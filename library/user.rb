class User 
    attr_accessor :name, :id, :email, :password
   
    def initialize(name, id, email, password) 
        @name = name
        @id = id 
        @email = email 
        @password = password  
    end 

    
end 