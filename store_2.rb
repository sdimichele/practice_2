item_1 = {section: "produce", name: "apple", price: 1}
item_2 = {section: "dairy", name: "milk", price: 3}
item_3 = {:section => "frozen", :name => "ice cream", :price => 4}


class Store
  attr_reader :section, :name, :price
  attr_writer :price
  def initialize(input)
    @section = input[:section]
    @name = input[:name]
    @price = input[:price]
  end



  def print_info
    "The product is located in the #{section} section of the store. The name of the product is #{name}. The price of #{name} is $#{price}."
  end


end

item_1 = Store.new(
                  section: "produce",
                  name: "apple",
                  price: 1
                  )

item_2 = Store.new(
                  section: "dairy",
                  name: "milk",
                  price: 3
                  )

item_3 = Store.new(
                  section: "frozen",
                  name: "ice cream",
                  price: 4
                  )

puts item_1.print_info
puts item_2.print_info
puts item_3.price=(3)
puts item_3.print_info