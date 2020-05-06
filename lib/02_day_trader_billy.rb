def day_trader(input_array)
    biggest_gap = 0
    best_days = []
    # Iterate over the list
    for i in 0..input_array.size-1
        # Iterate over the list except index lower or equal to i
        for j in i+1..input_array.size-1
            # # Dynamic testing comments
            # print "class of [i] : #{input_array[i].class} \n"
            # print "class of [j] : #{input_array[j].class} \n"
            # print "value of [i] : #{input_array[i]} \n"
            # print "value of [j] : #{input_array[j]} \n"
            # print "value of [i] - [j] : #{input_array[j] - input_array[i]} \n"
            # print "\n"

            # Compares both values
            current_gap = input_array[j] - input_array[i]

            if current_gap > biggest_gap
                # Saves the biggest gap and corresponding days (indexes)
                biggest_gap = input_array[j] - input_array[i]
                best_days = [i, j]
            end
        end
    end
    best_days
end