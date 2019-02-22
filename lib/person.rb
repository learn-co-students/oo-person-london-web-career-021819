require 'pry'
require 'pry'

class Person

  attr_reader :name, :hygiene, :happiness
  #getter = can't be changed
  #attr_writer
  #setter = can be changed
  attr_accessor :bank_account
  #both setter and getter

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(points) #setter
    if points > 10
      @happiness = 10
    elsif points < 0
      @happiness = 0
    else
      @happiness = points
    end
  end

  def hygiene=(points) #setter
    if points >= 10
      @hygiene = 10
    elsif points < 0
      @hygiene = 0
    else
      @hygiene = points
    end
  end

def happy?
  if @happiness > 7
    true
  else
    false
  end
end

def clean?
  if @hygiene > 7
    true
  else
    false
  end
end

def get_paid(salary)
  @bank_account = salary + @bank_account
  return "all about the benjamins"
end

def take_bath
  self.hygiene += 4
  return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.hygiene -= 3
  self.happiness += 2
  return "♪ another one bites the dust ♫"
end

def call_friend(instance)
  self.happiness += 3
  instance.happiness += 3
  return "Hi #{instance.name}! It's #{self.name}. How are you?"
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
