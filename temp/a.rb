
def t(max)
	no = 11
	while true
		if no > max
			break
		end
		if no.to_s == no.to_s.reverse
			if no.to_s(8) == no.to_s(8).reverse
				if no.to_s(2) == no.to_s(2).reverse
					print(no.to_s, "\n")
					break
				end
			end
		end
		no = no + 1
	end
end

t(800)

