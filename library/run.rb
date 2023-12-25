require_relative 'user.rb' 
require_relative 'library.rb'

lib = Library.new  
lib.register_user("John Doe", "john@example.com", "password123")
lib.register_user("Jane wick", "jane@example.com", "securepass")

# puts lib.users.map(&:id)
puts "Regestered Users #{lib.users.map(&:name).join(', ')}"
