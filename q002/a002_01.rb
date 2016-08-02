require "pp"

class A002

	public 

	@@OP = %w[* / + -]

	def answer
		p "Answer"
		(1000..9999).each do |num|
			nums = num.to_s.split("")
			@@OP.each do |op|
				@@OP.each do |op2|
					@@OP.each do |op3|
						culc = ""
						if nums[0] != "0"
							culc += nums[0]
						end
						if nums[1] != "0"
							culc += (op + nums[1])
						end
						if nums[2] != "0"
							culc += (op2 + nums[2])
						end
						if nums[3] != "0"
							culc += (op3 + nums[3])
						end
						if eval(culc).to_s == num.to_s.reverse
							pp num
						end
					end
				end
			end
		end
	end

end

a002 = A002.new
a002.answer

