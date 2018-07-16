def coins(number)
	coin = {}
	q_count = 0; d_count = 0; n_count = 0; p_count = 0
	ammounts = {:quarter => 25, :dime => 10, :nickel => 5, :penny => 1}
	until number == 0
		if number >= ammounts[:quarter]
			number -= ammounts[:quarter]
			q_count += 1
			coin.store(:quarter, q_count)
		elsif number >= ammounts[:dime]
			number -= ammounts[:dime]
			d_count += 1
			coin.store(:dime, d_count)
		elsif number >= ammounts[:nickel]
			number -= ammounts[:nickel]
			n_count += 1
			coin.store(:nickel, n_count)
		elsif number >= ammounts[:penny]
			number-= ammounts[:penny]
			p_count += 1
			coin.store(:penny, p_count)
		end
	end
	coin
end