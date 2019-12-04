class OpenDataAPI
    def self.get_data
        response = HTTParty.get('https://data.cityofnewyork.us/resource/43nn-pn8j.json')
        response[110..134].each do |hash| 
            RestaurantInspections.new(hash)
        end
    end
    def self.single_data(restaurant)
        response = HTTParty.get('https://data.cityofnewyork.us/resource/43nn-pn8j.json')
    end
end