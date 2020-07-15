# じゃんけんをして、勝ち負けを判定させましょう。（相手の出す手は乱数で決めましょう）
#  以下は出力例です。
#  -----------------
#  最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# 0
# あなたの手:グー、相手の手:チョキ
# あなたの勝ちです
# -----------------
# 以下は例外を入力した時の出力例です。
# -----------------
# 最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# 3
# 入力された値が無効です
# 最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# ...
puts "最初はグー、じゃんけん..."
def janken
	puts "[0]:グー\n[1]:チョキ\n[2]:パー"
	player_hand = gets.to_i

	program_hand = rand(3)

	jankens = ["グー", "チョキ","パー"]

	if player_hand >= 3
		puts "入力された値が無効です"
		puts "最初はグー、じゃんけん..."
		return true
	elsif player_hand == program_hand
		puts "あなたの手:#{jankens[player_hand]}、相手の手:#{jankens[program_hand]}"
		puts "あいこで..."
		return true
	elsif (player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
		puts "あなたの手:#{jankens[player_hand]}、相手の手:#{jankens[program_hand]}"
		puts "あなたの勝ちです"
		return false
	else
		puts "あなたの手:#{jankens[player_hand]}、相手の手:#{jankens[program_hand]}"
		puts "あなたの負けです"
		return false
	end
end

next_game = true

while next_game do
	next_game = janken
end