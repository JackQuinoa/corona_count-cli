require "HTTParty"

class CoronaCount::APIManager 

ATTRIBUTES = HTTParty.get("https://covidtracking.com/api/v1/states/current.json")
ATTRIBUTES.each {|info_hash| 
  state = info_hash["state"]
  positive = info_hash["positive"]
  recovered = info_hash["recovered"]
  death = info_hash["death"]
end
