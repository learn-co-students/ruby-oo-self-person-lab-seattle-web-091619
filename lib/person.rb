class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name, happiness=8, hygiene=8)
        @name = name
        @bank_account = 25
        @happiness = happiness
        @hygiene = hygiene
    end
   
    def happiness
        @happiness > 10? @happiness = 10 : @happiness
        @happiness < 0? @happiness = 0 : @happiness
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
    end

    def hygiene
        @hygiene > 10? @hygiene = 10 : @hygiene
        @hygiene < 0? @hygiene = 0 : @hygiene
    end

    def happy?
        if @happiness > 7
            p true
        else
            p false
        end
    end
   
    def clean?
        if @hygiene > 7
            p true
        else
            p false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        p "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        p "♪ another one bites the dust ♫"
    end
    
    def call_friend(person = Person.new("Jorf"))
        self.happiness += 3
        person.happiness += 3
        p "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            p "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            p "blah blah sun blah rain"
        else
            p "blah blah blah blah blah"
        end
    end
     

end
