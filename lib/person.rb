class Person
  attr_accessor :bank_account
  attr_reader :name
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    @happiness = happiness
    @happiness = 10 if happiness > 10
    @happiness = 0 if happiness < 0
  end

  def happiness
    @happiness
  end


  def hygiene=(hygiene)
    @hygiene = hygiene
    @hygiene = 10 if hygiene > 10
    @hygiene = 0 if hygiene < 0
  end
  def hygiene
    @hygiene
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def happy?
    @happiness > 7 ? true : false
  end


  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end


  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(colleague, topic)
    case topic
    when "politics"
      self.happiness -= 2
      colleague.happiness -= 2
      return "blah blah partisan blah lobbyist"

    when "weather"
      self.happiness += 1
      colleague.happiness += 1
      return "blah blah sun blah rain"

    else
      return "blah blah blah blah blah"

    end
  end

end
