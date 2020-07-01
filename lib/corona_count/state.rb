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
    @@all.each_with_index do |hash, index| 
      if index == input 
      puts "Cases for #{hash.state} - Positive Cases : #{hash.positive}. Recovered Cases : #{hash.recovered}. Death Count : #{hash.death}."
      end
    end
  end
end
