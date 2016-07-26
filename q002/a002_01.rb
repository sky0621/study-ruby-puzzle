
class A002

	public 

	@@OP = %w[* / + -]

	def answer
		p "Answer"
		(1000..1234).each do |i|
			p i
			if isReverse(i)

			end
p " "
p " "
p " "
		end
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

