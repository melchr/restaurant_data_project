class CLI
    def begin
        OpenDataAPI.get_data
        puts "Welcome to the Restaurant Inspection CLI!"
        menu
    end

    def menu
        input = nil
          puts "Type 1 for a list of Restaurants, type Exit to exit the program at anytime."
          while input != "exit"
          input = gets.strip.downcase
          if input == "1"
            RestaurantInspections.all.each.with_index do |restaurant, index|
              puts "#{index + 1}: #{restaurant.restaurant_name}"
            end
          elsif input == "exit"
            exit
        else
            puts "Invalid entry, please type either 1 or exit."
        end
        more_info
    end
    end

    def more_info
        input = nil
        while input != "exit"
        puts "\nPlease type the number of the restaurant you'd like to learn more about."
        input = gets.to_i
        restaurant = RestaurantInspections.all[input.to_i - 1]
        OpenDataAPI.single_data(restaurant)
        puts "\nRestaurant Name: #{restaurant.restaurant_name}"
        puts "Type of Food: #{restaurant.type_of_food}"
        puts "Grade Rating: #{restaurant.grade}"
        puts "Violation Description: #{restaurant.violation_description}"
        puts "\nWould you like to see a different restaurant? (y/n)"
        input = gets.strip.downcase
          if input == "y"
            RestaurantInspections.all.each.with_index do |restaurant, index|
              puts "#{index + 1}: #{restaurant.restaurant_name}"
            end
        elsif input == "exit"
            exit
        elsif input ==  "n"
            puts "\nThanks for using the Restaurant Data CLI!"
            puts "\n"
            exit
        else
            puts "Invalid entry, please type y, n, or exit."
          end
    end
        #need to loop this somehow
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

end