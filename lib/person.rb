class Person

attr_writer :bank_account
attr_reader :name, :happiness, :hygiene, :bank_account

def initialize(name)
  @name = name
  @bank_account = 25
  @happiness = 8
  @hygiene = 8
end

def happiness=(points)
  if points > 10
    @happiness = 10
  elsif points < 0
    @happiness = 0
  else
    @happiness = points
  end
end

def hygiene=(points)
  if points > 10
    @hygiene = 10
  elsif points < 0
    @hygiene = 0
  else
    @hygiene = points
  end
end

def get_paid(salary)
  @bank_account = @bank_account + salary
  return "all about the benjamins"
end

def take_bath
  self.hygiene = @hygiene + 4
#  binding.pry
  return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.happiness = @happiness + 2
  self.hygiene = @hygiene - 3
  return "♪ another one bites the dust ♫"
end

def call_friend(instance)
  instance.happiness += 3
  self.happiness += 3
  if instance.happiness
  return "Hi #{instance.name}! It's #{name}. How are you?"
end
end

def happy?
  if happiness > 7
    true
  else
    false
  end
end

def clean?
  if hygiene > 7
    true
  else
    false
  end
end

def start_conversation(person, topic)
  if topic == "politics"
    self.happiness -= 2
    person.happiness -= 2
    return "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    self.happiness += 1
    person.happiness += 1
    return "blah blah sun blah rain"
  else
    return "blah blah blah blah blah"
  end
end
end
