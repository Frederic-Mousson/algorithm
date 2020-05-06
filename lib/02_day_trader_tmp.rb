#fonction retourne un array à 2 elements des 2 meilleurs jours propices à faire un gain
def best_couple(tab_jour_tmp,depth)
	best_days_tmp = [0,0,0]
	for i in 1...tab_jour_tmp.length
		if tab_jour_tmp[i] - tab_jour_tmp[0] > best_days_tmp[2]
			best_days_tmp[1] = i
			best_days_tmp[2] = tab_jour_tmp[i] - tab_jour_tmp[0]
		end
	end
	best_days_tmp[0] += depth
	best_days_tmp[1] += depth
	return best_days_tmp
end

#On applique la fonction best_couple à l'ensemble des sous-tableaux en gardant le meilleurs couples
def day_trader(tab_jour)
	if (tab_jour_tmp.class == Array) && (tab_jour_tmp.length > 1)
		best_couple_gain = day_trader_rec(tab_jour,0)
		return [best_couple_gain[0], best_couple_gain[1]]
	else
		return "Le tableau de jours n'est pas valide"
	end
end

def day_trader_rec(tab_jour,depth)
	best_days = [0,0,0]
	if tab_jour.length == 2
		return best_couple(tab_jour, depth)
	else
		for days in 1...tab_jour.length - 1
			couple_tmp = best_couple(tab_jour.last(tab_jour.length - days))
			if couple_tmp[2] > best_days[2]
				best_days = couple_tmp.dup

		end	
	end
end