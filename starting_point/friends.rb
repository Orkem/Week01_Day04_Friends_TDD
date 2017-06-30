require('set')
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

def find_all_food(people)
  all_food = []
  people.each{|person| person[:favourites][:things_to_eat].each{|food| all_food << food}}
  return all_food.to_set
end

def no_friends(people)
  new_array = []
  people.each{|x| new_array.push(x[:name]) if x[:friends] == [] }
  return new_array
end