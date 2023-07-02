class Product 
    attr_reader :name, :id, :price
    attr_accessor :inventory, :reviews

    def initialize(name, id, price, inventory) 
        @name = name
        @id = id 
        @price = price 
        @inventory = inventory 
        @reviews = []
    end 


    def add_reviews(review) 
        @reviews << review
    end

end