require_relative "review"
require_relative "cart" 
require_relative "order" 
require_relative "user" 
require_relative "product" 
require_relative "promotion"


# Create some users
user1 = User.new(1, "John", "john@example.com")
user2 = User.new(2, "Jane", "jane@example.com")

# Create some products
product1 = Product.new(1, "Product 1", 10.99, 5)
product2 = Product.new(2, "Product 2", 19.99, 10)

# User adds items to the cart
user1.add_to_cart(product1)
user1.add_to_cart(product2)

# User leaves a review
user2.leave_review(product1, 4, "Great product!")

# User places an order with a promotion code
promotion = Promotion.new("SUMMER2023", 0.2)
user1.place_order(promotion)


