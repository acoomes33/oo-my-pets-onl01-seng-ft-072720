require 'pry'
class Owner
  
  attr_accessor   
  attr_reader :name, :species

    @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def name
     @name.freeze
   end
   
   def species
     @species.freeze
   end
   
   def say_species
      "I am a #{@species}."
   end
   
   def self.all 
     @@all 
   end
   
   def self.count
     @@all.count
   end 
   
   def self.reset_all
     @@all.clear
   end 
   
   def cats
     cats.collect {|cat| cat unless cat.owner == self}
   end
   
end
