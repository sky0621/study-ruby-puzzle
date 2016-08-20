require "pp"
require "./manage"

# 1 to 100 numbering cards. reversed.
# from 2 opened by 1 step. -> 2, 4, 6, 8, 10, 12, 14, 16, 18, 20... opened.
# from 3 opened by 1 step. -> 3,    x, 9,      x, 15,      x...     opened.
# from 4 opened by 1 step. ->    x,    x,     12,      x,      x... opened.
# Quite Not Chanded -> The times and All numbers at that time.

manage = Manage.new(100)
#pp manage.cardList

baseNo = 2
while baseNo < 100
	notChanged = true
	nowNo = baseNo
	while nowNo < 100
		changed = manage.change(nowNo)
		if(changed)
			notChanged = false
		end
		nowNo += baseNo
	end
	if baseNo > 2 && notChanged
#		pp baseNo
		pp manage.reversedNumbers
		break
	end
	baseNo += 1
end

