
# n 長さN cm
# m 棒が３本なら３人で切れる
# cur = 現在の棒の数
def cutbar(n, m, cur)
	if cur >= n then
		0
	elsif cur < m then
		1 + cutbar(n, m, cur * 2)
	else
		1 + cutbar(n, m, cur + m)
	end
end

# 長さn cm をm 人でカット
puts cutbar(8, 3, 1)
puts cutbar(20, 3, 1)
puts cutbar(100, 5, 1)

