class CLI
    def begin
        OpenDataAPI.get_data
    end

    def start
        puts "Welcome to the Restaurant Violation CLI!"
    end

    #methods to welcome user and display list using restaurant names & violations

    #give user a list of restaurants to choose from (will be 25 options)
    #or could I give user an option to search by borough?

    #RestaurantViolations.all

end