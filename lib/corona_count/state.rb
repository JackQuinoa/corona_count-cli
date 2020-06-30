class CoronaCount::State

attr_accessor :state, :positive, :recovered, :death
@@all = []

  def initialize(state, positive, recovered, death)
    @state, @positive, @recovered, @death = state, positive, recovered, death
    save 
  end
   
  def save
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end
  
  def self.state_count
     @@all.each {|instance| puts "#{instance.positive}"}
  end
 
end
