class Ship
  attr_accessor :name, :type, :booty
  
  SHIP = []
  
  def initialize(args)
    @name = args[:name]
    @type = args[:type] 
    @booty = args[:booty]
    SHIP << self

  end

  def self.all
    SHIP
  end 

  def self.clear
    SHIP
  end
end