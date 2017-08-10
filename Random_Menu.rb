
# program to randomly generate menu items

flavor_words = []
cooking_styles = []
foods = []

puts "How many menu items would you like generated?"
menu_number = gets.chomp.to_i
  while menu_number > 10 || menu_number < 1
    puts "How many menu items would you like generated? (10 or under)?"
    menu_number = gets.chomp.to_i
  end

# user can select foods options or menu items can be generated from existing options

puts "Do you want to pick your own foods (y/n)"
optional = gets.chomp.downcase
  if optional == "y"
    menu_number.times do
      puts "Please enter a food adjective: "
      flavor_words << gets.chomp
      puts "Please enter a cooking method: "
      cooking_styles << gets.chomp
      puts "Please enter a type of food: "
      foods << gets.chomp
    end
  else
      flavor_words = ["hot", "spicy", "sweet", "savory", "fruity", "creamy", "cold", "fluffy", "jiggly", "soft"]
      cooking_styles = ["fried", "steamed", "sauted", "baked", "boiled", "poached", "grilled", "roasted", "microwaved", "stir-fried"]
      foods = ["pork", "fish", "pho", "oysters", "zucchinni", "eggs", "strawberries", "soup", "mousse", "tots"]
  end

# prints the randomly generated menu items

menu_number.times do |generate|
  flavor_words_rand = rand(0...flavor_words.length)
  cooking_styles_rand = rand(0...cooking_styles.length)
  foods_rand = rand(0...foods.length)
  puts "#{generate+1}. #{flavor_words[flavor_words_rand]} #{cooking_styles[cooking_styles_rand]} #{foods[foods_rand]}"
  flavor_words.delete_at(flavor_words_rand)
  cooking_styles.delete_at(cooking_styles_rand)
  foods.delete_at(foods_rand)
end

# test to check whether items were indeed getting deleted so that each could only be used once
# puts flavor_words.length
