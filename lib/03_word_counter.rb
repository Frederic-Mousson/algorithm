dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def word_counter(str,dictionnary)
	texte_array = str.split
	hash_tmp = {}
	for j in 0...texte_array.length
		for i in 0...dictionnary.length
			#if dictionnary[i].include? texte_array[j]
			#puts "i : #{dictionnary[i]} - j : #{texte_array[j]} - Test = #{texte_array[j].include? dictionnary[i]}"
			if texte_array[j].downcase.include? dictionnary[i]	
				if hash_tmp[dictionnary[i]] == nil
					hash_tmp[dictionnary[i]] = 1
				else
					hash_tmp[dictionnary[i]] += 1
				end
			end
		end
	end
	return hash_tmp
end

#puts "#{word_counter("below",dictionnary)}"

