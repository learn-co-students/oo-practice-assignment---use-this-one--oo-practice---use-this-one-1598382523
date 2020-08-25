class Patient

    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end

    def name=(name)
        @name = name
    end

    def age=(age)
        @age = age
    end
end