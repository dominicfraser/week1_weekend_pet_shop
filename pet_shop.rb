def pet_shop_name(shop_name)
  return shop_name[:name]
end

def total_cash(shop_name)
  return shop_name[:admin][:total_cash]
end

def add_or_remove_cash(shop_name, amount)
  shop_name[:admin][:total_cash] += amount
  return total_cash(shop_name)
end

def pets_sold(shop_name)
  return shop_name[:admin][:pets_sold]
end

def increase_pets_sold(shop_name, amount)
  shop_name[:admin][:pets_sold] += amount
  return pets_sold(shop_name)
end

def stock_count(shop_name)
  return shop_name[:pets].length
end

def pets_by_breed(shop_name, breed)
  pet_name_of_same_breed = []
  petsarray = shop_name[:pets]
  for pet in petsarray
    if pet[:breed] == breed
      pet_name_of_same_breed << pet
    end
  end
  return pet_name_of_same_breed
end

def find_pet_by_name(shop_name, pet_name)
    petsarray = shop_name[:pets]
  for pet in petsarray
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(shop_name, pet_name)
  petsarray = shop_name[:pets]
  for pet in petsarray
    if pet[:name] == pet_name
      petsarray.delete(pet)
    end
  end
end

def add_pet_to_stock(shop_name, new_pet)
  shop_name[:pets] << new_pet
end

def customer_pet_count(customer)
  return customer[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

##------ OPTIONAL WORK

def customer_can_afford_pet?(customer, pet)
  customer[:cash] >= pet[:price] ? true : false 
end

def sell_pet_to_customer(shop_name, pet, customer)
  return if pet == nil || customer_can_afford_pet?(customer, pet) == false
  
    amount = pet[:price]
    add_pet_to_customer(customer, pet)
    remove_pet_by_name(shop_name, pet)
    increase_pets_sold(shop_name, 1)
    add_or_remove_cash(shop_name, amount)
end





# #find there is a pet 
# find_pet_by_name(shop_name, pet_name)
# #cust can afford it
# customer_can_afford_pet?(customer, pet)
#   #add pet to cx
#   add_pet_to_customer(customer, new_pet)
#   #remove pet from shop
#   remove_pet_by_name(shop_name, pet_name)
#   #increase pets sold
#   increase_pets_sold(shop_name, amount)
#     #remove money from cx

#     #add money to shop
#     add_or_remove_cash(shop_name, amount)

# ---------------------

  
#       add pet to cx

#       remove pet from shop

#       increase pets sold

#       add money to shop
  



