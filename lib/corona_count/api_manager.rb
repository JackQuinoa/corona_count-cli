require "HTTParty"

class CoronaCount::APIManager 
  
ATTRIBUTES = HTTParty.get("https://covidtracking.com/api/v1/states/current.json")
  
  def self.get_states
    ATTRIBUTES.each {|info_hash|
    state = info_hash["state"]
    
    
  end
  
  def self.get_states_data 
    ATTRIBUTES.each {|info_hash| 
    state = info_hash["state"]
    positive = info_hash["positive"]
    recovered = info_hash["recovered"]
    death = info_hash["death"]
    State.new(state, positive, recovered, death)
  end


 
end
