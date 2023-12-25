require_relative 'user.rb' 
require_relative 'library.rb'

lib = Library.new  
lib.register_user("John Do", "password123", 'admin') 
lib.register_user("John De", "password123", 'user') 
lib.register_user("John oe", "password123", 'admin') 
lib.register_user("John ", "password123", 'user') 

lib.login_user('John Do', 'password123')
lib.login_user('John De', 'password123')
lib.login_user('John oe', 'password123')
lib.login_user('John ', 'password123')




lib.logged_in_users
lib.logout_user('John Do')
lib.logged_in_users





# lib.login('John Doe', 'wrong_password')
# lib.register_user("Jane wick", "jane@example.com", "securepass")
# puts lib.users.map(&:id)

# puts "Regestered Users #{lib.users.map(&:name).join(', ')}"
