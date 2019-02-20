class Person

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account
  attr_writer :call_friend

  def happiness=(happiness)
      @happiness = happiness
      if happiness > 10
        @happiness = 10
      elsif happiness < 0
        @happiness = 0
      else
        @happiness = happiness
      end
  end

  def hygiene=(hygiene)
      @hygiene = hygiene
      if hygiene > 10
        @hygiene = 10
      elsif hygiene < 0
        @hygiene = 0
      else
        @hygiene = hygiene
      end
  end

  def take_bath
    self.hygiene = hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = hygiene - 3
    self.happiness = happiness + 2
    "♪ another one bites the dust ♫"
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
    @salary = salary
    @bank_account = @bank_account + salary
    'all about the benjamins'
  end

  def call_friend(person)
    self.happiness = happiness + 3
    person.happiness = person.happiness + 3
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation (person, topic)
    if topic == "politics"
      self.happiness = happiness - 2
      person.happiness = person.happiness - 2
      'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      self.happiness = happiness + 1
      person.happiness = person.happiness + 1
      'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end
  end


end
