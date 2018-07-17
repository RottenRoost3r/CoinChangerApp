def coins(number)
	coin = {}
	q_count = 0; d_count = 0; n_count = 0; p_count = 0
	ammounts = {quarter: 25, dime: 10, nickel: 5, penny: 1}
	until number == 0
		if number >= 24
			q_count = number / 25
			number = number - (q_count * 25)
			coin.store(:quarter, q_count)
		end
		
		if number >= 9
			d_count = number / 10
			number = number - (d_count * 10)
			coin.store(:dime, d_count)
		end
		
		if number >= 4
			n_count = number / 5
			number = number - (n_count * 5)
			coin.store(:nickel, n_count)
		end
		
		if number >= ammounts[:penny]
			number-= ammounts[:penny]
			p_count += 1
			coin.store(:penny, p_count)
		end
	end
	coin.class
	coin
end