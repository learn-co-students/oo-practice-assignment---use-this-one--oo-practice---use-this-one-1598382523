require 'pry'

class Doctor
    attr_accessor :name, :specialty

    def initialize(name, specialty)
        @name = name.to_s
        @specialty = specialty.to_s
    end
end

gloria = Doctor.new('Gloria', 'Cardiology')

ella = Doctor.new('Ella', 'Pediatrics')
