class CoronaCount::State

attr_accessor :state, :positive, :recovered, :death
@@all = []

  def initialize(state, positive, recovered, death)
    @state, @positive, @recovered, @death = state, positive, recovered, death 
  end
   
  def save
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end
  
  def self.state_count(input)
    state = @@all[input]
    "Cases for #{state.state} - Positive Cases : #{state.positive}. Recovered Cases : #{state.recovered}. Death Count : #{state.death}."
  end
  
end
