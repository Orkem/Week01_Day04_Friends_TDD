def get_name(person)
  return person[:name]
end

def get_tv_show(person)
  return person[:favourites][:tv_show]
end

def like_food?(person,food)
  return person[:favourites][:things_to_eat].include?(food)
end

def add_friend(person, name)
  person[:friends] << name
end

def remove_friend(person, name)
  person[:friends].delete(name)
end

def total_money(people)
  total = 0
  people.each{|person| total += person[:monies]}
  return total
end

def extend_loan(from_person,to_person,amount)
   from_person[:monies] -= amount
   to_person[:monies] += amount
end