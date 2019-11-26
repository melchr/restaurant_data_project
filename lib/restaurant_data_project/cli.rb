class CLI
    def begin
        OpenDataAPI.get_data
    end

    def start
        puts "Welcome to the Restaurant Violation CLI! Would you like to search for a Restaurant or a Grade Rating?"
        input = gets.chomp
    end

    #methods to welcome user and display list using restaurant names & violations

    #give user a list of restaurants to choose from (will be 25 #]options)
    #search by rating (B, C), maybe should just do B & C
    #and say "If your restaurant is not listed here, then it has an A rating!"

    #RestaurantViolations.all

end