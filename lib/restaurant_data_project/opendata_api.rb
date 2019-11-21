class OpenDataAPI
    def self.get_data
        response = HTTParty.get('https://data.cityofnewyork.us/resource/43nn-pn8j.json')
        response[0..24].each do |hash| 
            RestaurantViolations.new(hash)
        end
    end
end