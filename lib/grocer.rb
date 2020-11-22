def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  counter = 0 
  while counter < collection.length
    if collection[counter][:item] == name
      return collection[counter]
  end
    counter += 1 
  end
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  
  shopping_cart = []
  counter = 0 
    while counter < cart.length
    item = find_item_by_name_in_collection(cart[counter][:item], shopping_cart)
      if item != nil
        item[:count] += 1 
      else
        item = {
          :item => cart[counter][:item],
          :price => cart[counter][:price],
          :clearance => cart[counter][:clearance],
          :count => 1 
        }
        shopping_cart.push(item)
      end
  counter +=1
   end
   shopping_cart
 end
 


  