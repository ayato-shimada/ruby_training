# 「FaceBook」
# 以下の条件に従って、1から100までの数字を出力しましょう。
# - 条件
#  - 値が3で割り切れるときは'face'と出力する。
#  - 値が5で割り切れるときは'book'と出力する。
#  - 値が15で割り切れるときは'facebook'と出力する。
#  - それ以外の場合、値をそのまま出力する。
(1..100).each do |n|
	if n % 15 == 0
		puts "facebook"
	elsif n % 3 == 0
		puts "book"
	elsif n % 5 == 0
		puts "face"
	else
		puts n
	end
end