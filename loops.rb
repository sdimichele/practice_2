
cities = ["Jackson", "Southaven", "Sardis", "Oxford", "Batesville"]

index_two = 1
cities.each do |city|
  puts "#{index_two}.#{city}, Mississippi"
  # command righ breacket to indent # command control up and down arrow to switch
  index_two += 1
end

# while and until

number = 2

until number < 4
    puts "Bats in the freezer"  #control c to get out of loop
    number += 1
    puts "Bats in the fridge"
end