
def cutbar(barLong, humanNum)
	nums = 0
	pieceLong = 1
	while barLong > pieceLong do
		pieceLong += pieceLong < humanNum ? pieceLong : humanNum
		nums = nums + 1
	end
	puts(nums)
end

cutbar(20, 3)
cutbar(100, 5)

