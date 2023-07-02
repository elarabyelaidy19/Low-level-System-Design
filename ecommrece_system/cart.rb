class Cart 
    attr_reader :items 

    def initialize
        @items = []
    end 

    def add_item(item) 
        @items << item
    end 

    def remove_item(item) 
        @items.delete(item)
    end 

    def clear 
        @items.clear
    end  
end 