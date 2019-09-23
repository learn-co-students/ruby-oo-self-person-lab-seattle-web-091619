# your code goes here
class Person

    attr_accessor :bank_account, :hygiene, :happiness
    attr_reader :name
   
    
    def initialize(name)
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
@name = name 
    end
    
    def happiness=(happiness_holder)
        if happiness_holder > 10
            @happiness = 10
        elsif happiness_holder < 0
            @happiness = 0
        else
            @happiness = happiness_holder
        end
    end
    def hygiene=(hygiene_holder)
        if hygiene_holder > 10
            @hygiene = 10
        elsif hygiene_holder < 0
            @hygiene = 0
        else
            @hygiene = hygiene_holder
        end
    end

    def happy?
if self.happiness > 7
    return true
end
return false
    end

    def clean?
if self.hygiene > 7
    return true
end
return false
    end

    def get_paid(money)
            self.bank_account += money
            return "all about the benjamins"
    end


    def take_bath
self.hygiene +=4
return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
self.hygiene -=3
self.happiness +=2
return "♪ another one bites the dust ♫"
    end

    def call_friend(person_called, topic = "")
    self.happiness +=3
    person_called.happiness +=3
    return "Hi #{person_called.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(person_called, topic = "")
        if topic == "politics"
    self.happiness -=2
    person_called.happiness -=2
        elsif topic == "weather"

    self.happiness +=1
    person_called.happiness +=1
        end
    if topic == "weather"
return "blah blah sun blah rain"
    elsif topic == "programming"
        return "blah blah blah blah blah"
    end
    return "blah blah partisan blah lobbyist"
    end
end
