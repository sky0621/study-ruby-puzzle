require "./card"

class Manage

	def initialize(num)
		@cardList = Array.new
		(1..num).each do |n|
			@cardList.push(Card.new(n))
		end
	end

	def cardList
		@cardList
	end

	def change(no)
		@cardList.each do |card|
			if card.no == no
				return card.change
			end
		end
	end

	def reversedNumbers
		revList = Array.new
		@cardList.each do |card|
			if card.isClosed
				revList = card.no
			end
		end
		return revList
	end

end

