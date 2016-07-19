
class A001

	public

	def answer
		p "Answer"
		num = 11
		loop do
			num += 1

			if isReverse(num, 10) &&
				isReverse(num, 2) &&
				isReverse(num, 8)
				p "10s: " + num.to_s + ", 2s: " + num.to_s(2) + ", 8s: " + num.to_s(8)
				break
			end
		end
		p "End"
	end

	def isReverse(num, r)
		snum = num.to_s(r)
		if snum == snum.reverse
			return true
		end
		return false
	end

end

a001 = A001.new
a001.answer

