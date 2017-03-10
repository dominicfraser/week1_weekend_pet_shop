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