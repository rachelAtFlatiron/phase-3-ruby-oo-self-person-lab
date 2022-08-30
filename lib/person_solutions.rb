# your code goes here
require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end 

    #update happiness
    def happiness=(value) #why
        @happiness = 
        if value >= 10 
            10
        elsif value <= 0 
            0
        else
            value
       end 
    end 

    #update hygiene
    def hygiene=(value)
        if value >= 10 
            @hygiene = 10
       elsif value <= 0 
            @hygiene = 0 
       else
            @hygiene = value
       end 
    end 

    #instance methods
    def clean?
        @hygiene > 7 ? true : false
    end 

    def happy?
        @happiness > 7 ? true : false
    end 

    def get_paid(amount)
        @bank_account += amount 
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

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"

    end 

    def start_conversation(friend, topic)
        
        if(topic == "politics")
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif(topic == "weather")
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end 
end 

test = Person.new('meh')