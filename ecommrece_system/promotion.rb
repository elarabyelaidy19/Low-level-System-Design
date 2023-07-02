class Promotion 
    attr_reader :code, :discount 

    def initialize(code, discount) 
        @code = code 
        @discount = discount
    end 


    def apply(sub_total) 
        discounted_amount = sub_total * (1 - discount) 
        discounted_amount.round(2)
    end 
end 