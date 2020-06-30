require "httparty"
require "pry"

class CoronaCount::APIManager 
  
ATTRIBUTES = HTTParty.get("https://covidtracking.com/api/v1/states/current.json")
  
  def self.get_states_data 
    ATTRIBUTES.each {|info_hash| 
    state = info_hash["state"]
    positive = info_hash["positive"]
    recovered = info_hash["recovered"]
    death = info_hash["death"]
    state_numbers = CoronaCount::State.new(state, positive, recovered, death)
    state_numbers.save 
    }
  end

end
