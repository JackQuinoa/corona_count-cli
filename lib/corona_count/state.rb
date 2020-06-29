class CoronaCount::State

attr_accessor :state, :positive, :recovered, :death
@@all = []

  def initialize(state, positive, recovered, death)
    @state, @positive, @recovered, @death = state, positive, recovered, death
    @@all << self 
  end
  
  def state_list 
    puts self.state 
    
  end
  
  def state_count
    puts self.positive 
         self.recovered
         self.death 
  end
  
  
end
