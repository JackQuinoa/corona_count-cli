class CoronaCount::APIManager 

ATTRIBUTES = HTTParty.get("https://covidtracking.com/api/v1/states/current.json")

end
