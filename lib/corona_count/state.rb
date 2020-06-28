class CoronaCount::State

attr_accessor :state, :positive, :recovered, :death
@@all = []

  def initialize(state, positive, recovered, death)
    @state, @positive, @recovered, @death = state, positive, recovered, death
    @@all << self 
  end
  
  def state_list 
    APIMananger.get_states
    
  end
  
  def state_count
    APIMananger.get_states_data 
  end
  
  
end
