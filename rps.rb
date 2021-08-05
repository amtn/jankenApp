puts "最初はグー！"
puts "じゃんけん..."

def janken
  puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"

  # 入力された値を受け取る
  player_hand = gets.to_i
  # プログラムの手をランダムで出力
  program_hand = rand(3)
  
  if player_hand == 3
    puts "またじゃんけんしようね！"
    exit
    return false
  end
  
  jankens = ["グー", "チョキ", "パー"]
  
  puts "ぽん！"
  puts "-----------------"
  puts "あなた:#{jankens[player_hand]}を出しました"
  puts "相手:#{jankens[program_hand]}を出しました"
  puts "-----------------"
  
  # あいこのとき
  if player_hand == program_hand
    puts "あいこで..."
    return true
  
  # 勝ったとき
  elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
    puts "あなたの勝ちです"
    puts "-----------------"
    @attimuitehoi_win
    return false

  # 負けたとき
  elsif (player_hand == 0 && program_hand == 2) || (player_hand == 1 && program_hand == 0) || (player_hand == 2 && program_hand ==1)
    puts "あなたの負けです"
    puts "-----------------"
    @attimuitehoi_lose
    return false

  else
    puts "じゃんけんできませんでした"
    puts "0~3を入力してください"
    puts "-----------------"
    puts "じゃんけん..."
    return true
  end
end

next_game = true
  
while next_game
  next_game = janken
end


# じゃんけんに勝ったときのあっち向いてホイ
@attimuitehoi_win
  puts "あっち向いて〜"
  puts "0(上) 1(下) 2(左) 3(右)"

  player_face = gets.to_i
  program_face = rand(4)
  
  puts "ホイ！"
  
  attimuitehois = ["上", "下", "左", "右"]
  puts "-----------------"
  puts "あなた:#{attimuitehois[player_face]}"
  puts "相手:#{attimuitehois[program_face]}"
  puts "-----------------"
    
  if player_face == program_face
    puts "あなたの勝ちです！"
    exit
  else
    puts "引き分け"
    puts "-----------------"
    # じゃんけんに戻る
    puts "最初はグー！"
    puts "じゃんけん..."
    janken
  end

# じゃんけんに負けたときのあっち向いてホイ
@attimuitehoi_lose
  puts "あっち向いて〜"
  puts "0(上) 1(下) 2(左) 3(右)"

  player_face = gets.to_i
  program_face = rand(4)
  
  puts "ホイ！"
  
  attimuitehois = ["上", "下", "左", "右"]
  puts "-----------------"
  puts "あなた:#{attimuitehois[player_face]}"
  puts "相手:#{attimuitehois[program_face]}"
  puts "-----------------"
  
  if player_face == program_face
    puts "あなたの負けです！"
    exit
  else
    puts "引き分け"
    puts "-----------------"
    # じゃんけんに戻る
    puts "最初はグー！"
    puts "じゃんけん..."
    janken
  end