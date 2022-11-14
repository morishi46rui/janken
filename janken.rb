# じゃんけんで自分が出す手を画面入力で選ぶことができる
# 相手プレーヤーが出す手をランダムで出力させる
# じゃんけんで勝った側があっち向いてホイです指を差す方向を決める
# じゃんけんで負けた側があっち向いてホイで顔を向ける方向を決める
# 勝負がついた場合はどちらが勝者かわかるように文字列などで出力する

#じゃんけん
puts "最初はグー！じゃんけん・・・"
def janken 
  puts "[0]グー\n[1]チョキ\n[2]パー"
  
  player_hand = gets.to_i #入力された数字を取得
  rival_hand = rand(3) #相手の手を0~2でランダムに出すプログラム
  
  if player_hand == 0 || player_hand == 1 || player_hand == 2 
    puts "---------------"
    puts "ポン！！！"
  else #0~2以外が入力された時
    puts "0,1,2のいずれかを入力してください。"
    return true
  end
  
  jankens = ["グー", "チョキ", "パー"]
  puts "あなたの手:#{jankens[player_hand]}\n相手の手:#{jankens[rival_hand]}"

  if player_hand == rival_hand
    puts "---------------"
    puts "あいこで・・・"
    return true
  elsif (player_hand == 0 && rival_hand == 1) || (player_hand == 1 && rival_hand == 2) || (player_hand == 2 && rival_hand == 0)#勝ったとき
    puts "あなたの勝ち！"
    puts "---------------"
    @judgement = "win"
  else
    puts "あなたの負け・・・"
    puts "---------------"
    @judgement = "lose"
  end
#あっち向いてホイ
  puts "あっち向いて・・・"
  direction = ["↑", "↓", "→", "←"]
  
  rival_number = rand(4)
  
  if @judgement == "win"
    puts "[0]↑\n[1]↓\n[2]→\n[3]←"
    your_number = gets.to_i
    puts "---------------"
    puts "ホイッ！\n自分が指した方向:#{direction[your_number]}\n相手が向いた方向:#{direction[rival_number]}"
    if your_number == rival_number
      puts "おめでとう！あなたの勝ち！"
      return false
    else
      puts "もう一度！"
      puts "---------------"
      puts "最初はグー！じゃんけん・・・"
      return true
    end
  elsif @judgement == "lose" 
    puts "[0]↑\n[1]↓\n[2]→\n[3]←"
    your_number = gets.to_i
    puts "ホイッ！\n自分が向いた方向：#{direction[your_number]}\n相手が指した方向：#{direction[rival_number]}"
    if your_number == rival_number
      puts "残念・・・あなたの負け・・・"
      return false
    else
      puts "もう一度！"
      puts "---------------"
      puts "最初はグー！じゃんけん・・・"
      return true
    end
  else
    return true
  end
  
end

next_game = true

loop do
  next_game = janken
    if next_game == false
      break
    end
end




