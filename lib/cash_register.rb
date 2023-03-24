require 'pry'

class CashRegister
    
    attr_accessor :total, :items, :discount, :last_transaction

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(title, price, quantity = 1)
        # initially begin with this line: @total += price * quantity
        # when we arrive at void_last_transaction
        # we need to set a last_transaction to equal the price * quantity
        # then have last_transaction added to our total

       self.last_transaction = price * quantity
        @total += last_transaction
        # the #item method of the test is asking you to set our items to an empty array
        # and add the title to each item to the array each time, even duplicates
        quantity.times do 
            @items << title
        end
    end
    
    def apply_discount
        # instructions hints at you to use .to_f and .to_int, but not necessary
        # combination of both ways
        if discount > 0
            @total -= (@total * discount) / 100
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end
        # Quinn's way
        # if  @discount == 0
        #     "There is no discount to apply."
        #     else 
        #         @total -= (@total * discount / 100)
        #         "After the discount, the total comes to $#{@total}."
        #     end
        # end

            # another way to do it, Brooke's way
        # if discount > 0 
        #     my_discount  = @total * @discount / 100
        #     @total = total - my_discount
        #     "After the discount, the total comes to $#{@total}."
        # else
        #     "There is no discount to apply."

    def void_last_transaction
        @total -= self.last_transaction
    end
end

