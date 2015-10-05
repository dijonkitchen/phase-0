# Pseudocode
#
# input: older list, grocery list item, quantity
# output: new list with new items or quantities
#
# 5 methods:
# define method for new list
# def - add item
# def - remove item
# def update item
# print list
#
#
# make an empty hash

def new_list(list_name)
  list_name = {}
end

# def add_or_update_item(hash,item,quantity)
#   hash[item]=quantity
# end

def add_or_update_item(list,new_items)
  list.merge!(new_items)
end

def remove_item(list,item)
  list.delete(item)
end

# def update(hash,item,quantity)
#   hash[item]=quantity
# end

def print_list(list_name)
  p list_name
end

groceries = new_list("groceries")

# add_or_update_item(groceries,"lemonade",2)
# add_or_update_item(groceries,"tomatoes",3)
# add_or_update_item(groceries,"onions",1)
# add_or_update_item(groceries,"ice cream",4)

second_list = {
  lemonade:2,
  tomatoes:3,
  onions:1,
  ice_cream:4,
}

groceries = add_or_update_item(groceries,second_list)

remove_item(groceries,"lemonade")

add_or_update_item(groceries,{ice_cream:1})

print_list(groceries)

# What did you learn about pseudocode from working on this challenge?

# It's good to map out the methods you want to create and how to creat them if they're going to do a lot of things.

# What are the tradeoffs of using Arrays and Hashes for this challenge?

# Arrays don't have a key-value pair like hashes do, so referencing items in them would require the index, rather than an object.

# What does a method return?

# In general, a method returns the last calculated value or whatever you tell it to return earlier if you don't want it to continue.

# What kind of things can you pass into methods as arguments?

# You can pass all sorts of objects as arguments. In the above example, we passed in a hash to add, update, and remove items. We even used an array of hashes as we refactored to make it easier to add many items and quantities at once.

# How can you pass information between methods?

# You can pass information between methods by storing data in a variable and using that variable in other methods as arguments.

# What concepts were solidified in this challenge, and what concepts are still confusing?

# The usefulness of hashes was solidifed for me in this challenge. I previously wondered why you couldn't use an array of arrays, but now I realize you wouldn't be able to reference the key as you would in a hash. 
