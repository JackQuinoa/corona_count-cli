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
  
  def self.state_count(input)
    @@all.each_with_index {|hash, index| 
      if index == input 
      puts "Cases for #{hash.state} - Positive Cases : #{hash.positive}. Recovered Cases : #{hash.recovered}. Death Count : #{hash.death}."
      # else 
      #   puts "That number isn't correlated to a state/territory."
      end
    }
  end
      ## Hard code but works
    # selection = @@all.detect {|instance| instance.state == "AK" }
    # puts "Cases for #{selection.state} - Positive Cases : #{selection.positive}. Recovered Cases : #{selection.recovered}. Death Count : #{selection.death}."
  # end
 
end
