require "pp"

class A002

	public 

#	@@OP = %w[* / + -]
	@@OP = %w[* /]

	def answer
		p "Answer"
		(1000..9999).each do |num|
			# 1数ずつの計算パターン
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
						if eval(culc).to_s == num.to_s.reverse
							pp num
						end
						if nums[2] != "0"
							culc += (op2 + nums[2])
						end
						if eval(culc).to_s == num.to_s.reverse
							pp num
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
			# 2数ずつの計算パターン
			pre = nums[0].to_s
			post  = (nums[1] + nums[2] + nums[3]).to_i.to_s
			@@OP.each do |op|
				if post == "0"
					next
				end
				if eval(pre + op + post).to_s == num.to_s.reverse
					pp num
				end
			end
			# 3数の計算パターン1
			first = nums[0].to_s
			second = nums[1].to_s
			third = (nums[2] + nums[3]).to_i.to_s
			@@OP.each do |op|
				@@OP.each do |op2|
					if second == "0" || third == "0"
						next
					end
					if eval(first + op + second + op2 + third).to_s == num.to_s.reverse
						pp num
					end
				end
			end
			# 3数の計算パターン2
			first = nums[0].to_s
			second = (nums[1] + nums[2]).to_i.to_s
			third = nums[3].to_s
			@@OP.each do |op|
				@@OP.each do |op2|
					if second == "0" || third == "0"
						next
					end
					if eval(first + op + second + op2 + third).to_s == num.to_s.reverse
						pp num
					end
				end
			end
			# 3数の計算パターン3
			first = (nums[0] + nums[1]).to_i.to_s
			second =nums[2].to_s
			third = nums[3].to_s
			@@OP.each do |op|
				@@OP.each do |op2|
					if second == "0" || third == "0"
						next
					end
					if eval(first + op + second + op2 + third).to_s == num.to_s.reverse
						pp num
					end
				end
			end
		end
	end

end

a002 = A002.new
a002.answer

