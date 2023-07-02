require_relative "review"
require_relative "cart" 
require_relative "order" 


class User  
    attr_reader :id, :name, :email
    attr_accessor :cart  

    def initialize(id, name, email) 
        @id = id 
        @name = name 
        @email = email 
        @cart = Cart.new
    end  

    def add_to_cart(product) 
        @cart.add_item(product)
    end

    def place_order(promotion = nil) 
        order = Order.new(self, @cart.items) 
        order.apply_promotion(promotion) if promotion 
        order.place 
        @cart.clear
    end  

    def leave_review(product, rating, comment) 
        review = Review.new(self, product, rating, comment) 
        product.add_reviews(review)
    end 

 
end 
 




