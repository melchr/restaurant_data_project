class RestaurantViolations

    attr_reader :restaurant_name, :type_of_food, :violation_description, :critical_flag

    @@all = []

    def initialize(api_hash)
        @restaurant_name = api_hash["dba"]
        @type_of_food = api_hash["cuisine_description"]
        @violation_description = api_hash["violation_description"]
        @grade = api_hash["grade"]
        @@all << self
    end

    def self.all
        @@all
    end
    
end