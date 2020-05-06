#fonction retourne un array à 2 elements des 2 meilleurs jours propices à faire un gain

def day_trader(tab_jour)
	if (tab_jour.class == Array) && (tab_jour.length > 1)
		best_couple_gain = [0,0]
		best_gain = 0
		for i in 0...tab_jour.length-1
			for j in i+1...tab_jour.length
				if tab_jour[j] - tab_jour[i] > best_gain
					best_couple_gain[0] = i
					best_couple_gain[1] = j
					best_gain = tab_jour[j] - tab_jour[i]
				end
			end
		end
		return best_couple_gain
	else
		return "Le tableau de jours n'est pas valide"
	end
end
