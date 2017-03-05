# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Create a grocery list that's an empty hash
  # Use .split to create the list of items
  # Add items to the hash list by using each do || end
  # Print list
# output: We're going to use a hash to create a list of items

def create_list(items)
  list = {}
  p list
  items = items.split
  p items
  items.each do |grocery|
    list[grocery] = 1
  end
  return list
end

my_grocery_list = create_list("carrots apples cereal pizza")
p my_grocery_list

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # Add a method to add items to the list using an empty hash
# output: Adding a new item to the grocery list
# and updating giving it a quantity
def add_item(grocery_list, new_item, quantity)
  grocery_list[new_item] = quantity
  grocery_list
end

# Method to remove an item from the list
# input:
# steps:
  # Make a method that accepts
  # two arguments,the list and the item to be removed
  # Remove items from list
  # Print updated list
# output: Removing an item from the grocery list and printing
# an updated grocery list
def remove_item(grocery_list, new_item)
  grocery_list.delete(new_item)
  p grocery_list
end

# Method to update the quantity of an item
# input:
# steps:
  # Add a method that prints the list with the updated quantity
# output: Updating the quantity of an item and printing
# an updated grocery list
def update_quantity(grocery_list, new_item, quantity)
  grocery_list[new_item] = quantity
  p grocery_list
end

# Method to print a list and make it look pretty
# input:
# steps:
  # Add a method that prints the grocery list
  # by using each do || end
# output: Printing the grocery list and the quantity
def print_list(grocery_list)
  puts "Here is the grocery list!"
  grocery_list.each do |new_item, quantity|
    puts "#{new_item}: #{quantity}"
  end
end

p add_item(my_grocery_list, "lemonade", 2)
p add_item(my_grocery_list, "tomatoes", 3)
p add_item(my_grocery_list, "onions", 1)
p add_item(my_grocery_list, "ice cream", 4)
p remove_item(my_grocery_list, "lemonade")
p update_quantity(my_grocery_list, "ice cream", 1)
p my_grocery_list
