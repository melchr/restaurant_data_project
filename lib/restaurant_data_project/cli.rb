class CLI
    def begin
        OpenDataAPI.get_data
        puts "Welcome to the Restaurant Inspection CLI!"
        menu
    end

    def menu
        input = nil
          puts "Type 1 for a list of Restaurants, type Exit to leave the program at anytime."
            while input != "exit"
                input = gets.strip.downcase
                if input == "1"
                    RestaurantInspections.all.each.with_index do |restaurant, index|
                    puts "#{index + 1}: #{restaurant.restaurant_name}"
                end
                more_info
                elsif input == "exit"
                    puts "\nThanks for using the Restaurant Inspection CLI!"
                    puts "\n"
                    exit
                else
                    puts "Invalid entry, please type either 1 or exit."
                end
            end
    end

    def more_info
        input = nil
          puts "\nPlease type the number of the restaurant you'd like to learn more about, or type 'exit' to leave the program."
            while input != "exit"
            input = gets.chomp
            if input.to_i.between?(1,25)
                restaurant = RestaurantInspections.all[input.to_i - 1]
                OpenDataAPI.single_data(restaurant)
                puts "\nRestaurant Name: #{restaurant.restaurant_name}"
                puts "Type of Food: #{restaurant.type_of_food}"
                puts "Grade Rating: #{restaurant.grade}"
                puts "Violation Description: #{restaurant.violation_description}"
            diff_restaurant
            elsif input == "exit"
              puts "Thanks for using the Restaurant Inspection CLI!"
              exit
            else
              puts "Invalid entry, please type the number of the restaurant you'd like to learn about, or type 'exit'."
            end
            end
    end

        def diff_restaurant
            input = nil
              puts "\nWould you like to see a different restaurant? Please type 'Yes' or 'No'."
              while input != "exit"
              input = gets.chomp.downcase
                if input == "yes"
                    RestaurantInspections.all.each.with_index do |restaurant, index|
                        puts "#{index + 1}: #{restaurant.restaurant_name}"
                        end
                    more_info
                elsif input == "no"
                  puts "\nThanks for using the Restaurant Inspection CLI!"
                  puts "\n"
                  exit
                elsif input == "exit"
                  puts "\nThanks for using the Restaurant Inspection CLI!"
                  puts "\n"
                  exit
                else
                  puts "Invalid entry, please type 'Yes' or 'No'.'"
               end
              end
        end
end
