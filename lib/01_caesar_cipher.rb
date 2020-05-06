#décale une lettre de la valeur 'jump'
def shift_letter(letter,jump)
	if (letter =~ /[A-Z]/) == 0 || (letter =~ /[a-z]/) == 0
		pos_letter = letter.ord
		pos_new_letter = pos_letter + jump
		if letter <= "Z"
			if pos_new_letter <= 90
				return pos_new_letter.chr
			else
				return (pos_new_letter % 90 + 64).chr
			end
		else
			if pos_new_letter <= 122
				return pos_new_letter.chr
			else
				return (pos_new_letter % 122 + 96).chr
			end
		end

	else
		return letter
	end
end

#puts "#{shift_letter("A",3)}"
#puts "#{shift_letter("A",0)}"
#puts "#{shift_letter("A",26)}"
#puts "#{shift_letter("!",3)}"
#puts "#{shift_letter("2",3)}"
#puts "#{shift_letter("m",3)}"


def caesar_cipher(message,jump)
	if (message.class == String) && (message.length > 0)
		new_txt = ""
		for i in 0...message.length
			new_txt = new_txt + shift_letter(message[i],jump)
		end
		return new_txt
	else
		return "le message doit être une chaine de caractères !"
	end
end