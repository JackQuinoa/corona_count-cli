class CoronaCount::State

attr_accessor :state, :positive, :recovered, :death
@@all = []

  def initialize(state, positive, recovered, death)
    @state, @positive, @recovered, @death = state, positive, recovered, death
    @@all << self 
  end
  
  def self.state_list 
    puts @state
    puts "HELLO!"
  end
  
  def self.all 
    @@all 
  end
  
  def self.state_count
    puts self.positive 
         self.recovered
         self.death 
  end
  
  
end
