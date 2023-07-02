class Order 

    attr_reader :user, :products, :placed_at, :total_amount, :promotion 

    def initialize(user, products) 
        @user = user 
        @products = products 
        @placed_at = nil 
        @total_amount = 0 
        @promotion = nil 
    end 

    def apply_promotion(promotion) 
        @promotion = promotion
    end 

    def place 
        @placed_at  = Time.now 
        calc_total
        update_inventory 
        send_confirmation_email
    end 


    private

    def calc_total 
        sub_total = @products.sum(&:price) 
        @total_amount = @promotion ? @promotion.apply(sub_total) : sub_total 
        puts "Order placed by #{user.name} for #{products.count} products."
        puts "Subtotal: $#{sub_total}"
        puts "Total amount: $#{@total_amount}"
    end 

    def update_inventory 
        @products.each { |product| product.inventory -= 1 } 
        puts "product inventory updated"
    end 

    def send_confirmation_email
        puts "Confirmation email sent to #{user.email}."
    end

end 