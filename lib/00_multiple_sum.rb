def sum_of_3_or_5_multiples(final_number)
	if final_number.class == Integer && final_number>=0
		final_sum = 0
		for i in 1...final_number
			if is_multiple_of_3_or_5?(i)
				final_sum += i
			end
		end
		return final_sum
	else
		return "Yo ! Je ne prends que les entiers naturels."
	end
end

def is_multiple_of_3_or_5?(n)
	return (n % 3 == 0) || (n % 5 ==0)
end