# your code goes here
class Person 
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  @@all = []

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
    @@all << self
  end

  def happiness
    @happiness > 10 ? @happiness = 10 : @happiness
    @happiness < 0 ? @happiness = 0 : @happiness
  end

  def happy?
    @happiness > 7
  end

  def hygiene
    @hygiene > 10 ? @hygiene = 10 : @hygiene
    @hygiene < 0 ? @hygiene = 0 : @hygiene
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    self.bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(other_person, topic)
    if topic == "politics"
      other_person.happiness -= 2
      self.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      other_person.happiness += 1
      self.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

  def self.all
    @@all
  end

end