# your code goes here
require 'pry'
class Person

    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    def initialize(name)
        @name = name
        @bank_account = 25.00
        @happiness = 8
        @hygiene = 8
        def happiness
            @happiness > 10? @happiness = 10 : @happiness
            @happiness < 0? @happiness = 0 : @happiness
        end
        def hygiene
            @hygiene > 10? @hygiene = 10 : @hygiene
            @hygiene < 0? @hygiene = 0 : @hygiene
        end
    end
    def happy?
        if @happiness > 7 
            return true
        else
            false
        end
    end 

    def clean?
        if @hygiene > 7
            return true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
        #binding.pry
    end 

    def take_bath
        self.hygiene = @hygiene + 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = @hygiene - 3
        self.happiness = @happiness + 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = @happiness + 3
        friend.happiness = friend.happiness + 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friendo, topic)
        if topic == "politics"
            self.happiness = @happiness - 2
            friendo.happiness = friendo.happiness- 2
            return "blah blah partisan blah lobbyist"
        end

        if topic == "weather"
            self.happiness = @happiness + 1
            friendo.happiness = friendo.happiness + 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
    
end