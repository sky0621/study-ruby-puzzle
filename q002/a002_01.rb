require "pp"

class A002

	public 

	@@OP = %w[* / + -]

	def answer
		p "Answer"
		(1000..9999).each do |i|
			isReverse(i)
		end
	end

	def targets(num)
		targets = []
		tempArray = []
		# f.e. 1234 -> [1][2][3][4]
		numArray = num.to_s.split("")
		# 1 -> 0 -> 0 -> 0
		# 1 -> 2 -> 3 -> 4
		numArray.each do |snum|
			if snum.to_i == 0
				next
			end
			if targets.empty?
				targets << snum
				# now : targets = [1]
			else
				# f.e. [1]
				# next [1*2] -> [1/2] -> [1+2] -> [1-2]
				targets.each do |target|
					@@OP.each do |op|
						tempArray << target + op + snum
						# next [1*2*3]
					end
					# now : tempArray = [1*2][1/2][1+2][1-2]
				end
				targets = tempArray
				tempArray = []
			end
		end
		return targets
	end

	def isReverse(num)
		targets = targets(num)
pp targets
		targets.each do |target|
			ev = eval(target)
			if ev < 1
				next
			end
			if ev == num.to_s.reverse.to_i
pp "[num]:" + num.to_s + ", [rev]:" + num.to_s.reverse + ", [culc]:" + target
pp ev
			end
		end
	end

end

a002 = A002.new
a002.answer

