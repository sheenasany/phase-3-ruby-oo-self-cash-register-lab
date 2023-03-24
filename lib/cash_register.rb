require 'pry'

class CashRegister
    
    attr_reader :discount
    attr_accessor :total

    def initialize(discount = 0)
        @discount = discount
        @total = 0
    end
    def add_item(title, price, amount = 1)
       @total += price * amount
    end
    def apply_discount
        if  @discount == 0
            "There is no discount to apply."
            else 
                @total -= (@total * discount / 100)
                "After the discount, the total comes to $#{@total}."
            end

            # another way to do it, Brooke's way
        # if discount > 0 
        #     my_discount  = @total * @discount / 100
        #     @total = total - my_discount
        #     "After the discount, the total comes to $#{@total}."
        # else
        #     "There is no discount to apply."

    def items (item, price, something)
        items = []
        items << item
    end
end

binding.pry
