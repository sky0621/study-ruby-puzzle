
class Card

	def initialize(no)
		@no = no
		@init = true
		@isClosed = true
	end

	def change
be = @isClosed
		@isClosed = !@isClosed
		if @init
			@init = false
			return false
		end
if @no == 53
p printf("no[%d] %s -> %s", @no, be, @isClosed)
end
		return true
	end

	def no
		@no
	end

	def isClosed
		@isClosed
	end

end
 
