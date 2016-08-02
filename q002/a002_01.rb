
class A002

	public 

	@@OP = %w[* / + -]

	def answer
		p "Answer"
		(1000..1234).each do |i|
			p i
#			if isReverse(i)
p targets(i)
#			end
p " "
p " "
p " "
		end
	end

	def targets(num)
		targets = []
		tempArray = []
		# f.e. 1234 -> [1][2][3][4]
		numArray = num.to_s.split("")
		# 1 -> 2 -> 3 -> 4
		numArray.each do |snum|
			if targets.empty?
				@@OP.each do |op|
					targets << snum + op
				end
				# now : targets = [1*][1/][1+][1-]
			else
				# f.e. [1*] -> [1/] -> [1+] -> [1-]
				targets.each do |target|
					@@OP.each do |op|
						tempArray << target + snum + op
					end
					# now : tempArray = [1*2*][1*2/][1*2+][1*2-][1/2*][1/2/][1/2+][1/2-][1+2*][1+2/][1+2+][1+2-][1-2*][1-2/][1-2+][1-2-]
				end
				targets = tempArray
				tempArray = []
			end
		end
		return targets
	end

	def isReverse(num)
		cls = []
		cls2 = []
		ss = num.to_s.split("")
		ss.each do |s|
p "< " + s
			if cls.empty?
				@@OP.each do |o|
					cls << s + o
				end
			else
				cls.each do |c|
					@@OP.each do |o|
						cls2 << c + s + o
					end
				end
			end
p cls2
		end
	end

end

a002 = A002.new
a002.answer

