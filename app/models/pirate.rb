class Pirate

    attr_accessor :name, :weight, :height

    PIRATES = []

    def initialize(args)
        @name = args[:name]
        @height = args[:height]
        @weight = args[:weight]
        PIRATES << self
    end 

    def self.all
        PIRATES
    end
    
end