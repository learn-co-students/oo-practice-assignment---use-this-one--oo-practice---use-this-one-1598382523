class Patient
def initialize(name, age) 
    @name = name
    @age = age
end

def name
    @name
end


def age
    @age
end
end

patient = Patient.new("Jordan", 47)
patient.name