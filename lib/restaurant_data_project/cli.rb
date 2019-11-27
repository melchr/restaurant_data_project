class CLI
    def begin
        OpenDataAPI.get_data
        puts "Welcome to the Restaurant Inspection CLI!"
        menu
    end

    def menu
        input = nil
        while input != "exit"
        puts "Type 1 for a list of Restaurants, type Exit to exit the program"
        input = gets.strip.downcase
        case input
        when "1"
            puts RestaurantInspections.all #this is incorrect
        when "exit"
            break
        else
            puts "Invalid entry - Please type either 1 or Exit"
        end
    end
    end

    def search
        
        #else "What Restaurant would you like to search for?"
        #create method for each to display lists^^^^^
    end

    #display list of restaurant names, then ask user to make an option
    #RestaurantInspections.all (array of objects)
    #then user selects from list, which displays info of selection
    #build a loop

    #should not terminate unless user types EXIT, should be aware they can type exit whenever
    #input validation, re-ask for input, say invalid input using if else




    #give user a list of restaurants to choose from (will be 25 options)

    #if "Grade Rating NUMBER" then give user list of grade options to type (A, B, C, N, P, Z) (OPTIONAL)

end