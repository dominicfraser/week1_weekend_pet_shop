def pet_shop_name(shopname)
  return shopname[:name]
end

def total_cash(shopname)
  return shopname[:admin][:total_cash]
end

def add_or_remove_cash(shopname, amount)
  shopname[:admin][:total_cash] += amount
  return total_cash(shopname)
end

def pets_sold(shopname)
  return shopname[:admin][:pets_sold]
end

def increase_pets_sold(shopname, amount)
  shopname[:admin][:pets_sold] += amount
  return pets_sold(shopname)
end

def stock_count(shopname)
  return shopname[:pets].length
end

def pets_by_breed(shopname, breed)
  pet_name_of_same_breed = []
  petsarray = shopname[:pets]
  for pet in petsarray
    if pet[:breed] == breed
      pet_name_of_same_breed << pet
    end
  end
  return pet_name_of_same_breed
end

def find_pet_by_name(shopname, petname)
    petsarray = shopname[:pets]
  for pet in petsarray
    if pet[:name] == petname
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(shopname, petname)
  petsarray = shopname[:pets]
  for pet in petsarray
    if pet[:name] == petname
      petsarray.delete(pet)
    end
  end
end

def add_pet_to_stock(shopname, newpet)
  shopname[:pets] << newpet
end

def customer_pet_count(customer)
  return customer[:pets].length
end


