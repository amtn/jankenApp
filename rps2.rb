puts "最初はグー"
puts "じゃんけん..."

def attimuitehoi_win
  puts "------------------"
  puts "あっち向いて..."
  
  puts "0(上) 1(下) 2(左) 3(右)"
  
  player_face = gets.to_i
  program_face = rand(4)
  
  attimuitehois = ["上","下","左","右"]
  
  puts "ほい!"
  puts "------------------"
  puts "あなた:#{attimuitehois[player_face]}"
  puts "相手:#{attimuitehois[program_face]}"
  puts "------------------"
  
  if player_face == program_face
    puts "あなたの勝ちです"
  else
    puts "引き分け"
    puts "------------------"
    puts "最初はグー"
    puts "じゃんけん..."
    return true
  end
end

def attimuitehoi_lose
  puts "------------------"
  puts "あっち向いて..."
  
  puts "0(上) 1(下) 2(左) 3(右)"
  
  player_face = gets.to_i
  program_face = rand(4)
  
  attimuitehois = ["上","下","左","右"]
  
  puts "ほい!"
  puts "------------------"
  puts "あなた:#{attimuitehois[player_face]}"
  puts "相手:#{attimuitehois[program_face]}"
  puts "------------------"
  
  if player_face == program_face
    puts "あなたの負けです"
  else
    puts "引き分け"
    puts "------------------"
    puts "最初はグー"
    puts "じゃんけん..."
    return true
  end
end


def janken
  puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
  
  player_hand = gets.to_i
  program_hand = rand(3)
  
  if player_hand == 3
    puts "おわり"
    exit
  end
  
  jankens = ["グー","チョキ","パー"]
  
  puts "ぽん!"
  puts "------------------"
  puts "あなた:#{jankens[player_hand]}を出しました"
  puts "相手:#{jankens[program_hand]}を出しました"
  puts "------------------"

  win = (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
  lose = (player_hand == 0 && program_hand == 2) || (player_hand == 1 && program_hand == 0) || (player_hand == 2 && program_hand == 1)

  if player_hand == program_hand
    puts "あいこで..."
    return true
  elsif win
    puts "あなたの勝ちです"
    attimuitehoi_win
  elsif lose
    puts "あなたの負けです"
    attimuitehoi_lose
  else
    puts "1~3を入力して下さい"
    return true
  end
end

next_game = true

while next_game
  next_game = janken
end

