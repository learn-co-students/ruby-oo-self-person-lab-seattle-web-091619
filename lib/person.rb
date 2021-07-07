# your code goes here
require 'pry'
class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
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
        @bank_account += salary
        return "all about the benjamins"
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
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(amigo, material)
        if material == "politics"
            self.happiness = @happiness - 2
            amigo.happiness = amigo.happiness - 2
            return "blah blah partisan blah lobbyist" 
        end
        if material == "weather"
            self.happiness = @happiness + 1
            amigo.happiness = amigo.happiness + 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end

end