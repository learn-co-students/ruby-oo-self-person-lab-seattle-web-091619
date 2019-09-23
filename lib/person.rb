class Person

    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    @@all = []

    def initialize (name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
        @@all << self
    end

    def self.all
        @@all
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
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
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
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(other_person)
        self.happiness += 3
        other_person.happiness += 3
        "Hi #{other_person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)

        person_instance = self.class.all.find do |person_holder|
            person_holder == person
        end

        if topic == "politics"
           self.happiness -= 2
           person_instance.happiness -= 2
           "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person_instance.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end

