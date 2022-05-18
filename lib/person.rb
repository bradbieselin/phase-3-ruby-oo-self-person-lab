class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        @happiness = happiness.clamp(0,10)
    end

    def hygiene=(hygiene)
        @hygiene = hygiene.clamp(0,10)
    end

    def clean?
        if hygiene <= 7
            false
        else hygiene > 7
            true
        end
    end

end

brad = Person.new("Brad")
brad.happiness=6
p(brad)