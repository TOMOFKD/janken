hand = ["グー","チョキ","パー"]
finger = ["上","下","左","右"]

number = true
janken = true
aiko = true

while janken
  puts "じゃんけん．．．"
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"

  while number
    player = gets.chomp
    if player == "0" || player == "1" || player == "2" || player == "3"
      number = false
    else
      puts "0〜3の数字を入力してください"
      number = true
    end
  end

  number = true
    
  if player == "3"
    break
  end
  
  com = rand(3)

  puts "ホイ！"
  puts "--------------"
  puts "あなた：#{hand[player.to_i]}を出しました"
  puts "相手：#{hand[com]}を出しました"

  if player.to_i == com
    while aiko
      puts "--------------"
      puts "あいこで．．．"
      puts "0(グー)1(チョキ)2(パー)3(戦わない)"
      while number
        player = gets.chomp
        if player == "0" || player == "1" || player == "2" || player == "3"
          number = false
        else
          puts "0〜3の数字を入力してください"
          number = true
        end
      end
      number = true
      if player == "3"
        break
      end
      com = rand(3)
      puts "ホイ！"
      puts "--------------"
      puts "あなた：#{hand[player.to_i]}を出しました"
      puts "相手：#{hand[com]}を出しました"
      if player.to_i != com
        aiko = false
      end
    end
  end

  if player  == "3"
    break
  end

  if(player == "0" && com == 1)||(player == "1" && com == 2)||(player == "2" && com == 0)
    puts "--------------"
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    while number
      player = gets.chomp
      if player == "0" || player == "1" || player == "2" || player == "3"
        number = false
      else
        puts "0〜3の数字を入力してください"
        number = true
      end
    end
    number = true
    com = rand(4)
    puts "ホイ！"
    puts "--------------"
    puts "あなた：#{finger[player.to_i]}を出しました"
    puts "相手：#{finger[com]}を出しました"
    if player.to_i == com
      puts "あなたの勝ちです"
      janken = false
    end

  else
    puts "--------------"
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    while number
      player = gets.chomp
      if player == "0" || player == "1" || player == "2" || player == "3"
        number = false
      else
        puts "0〜3の数字を入力してください"
        number = true
      end
    end
    number = true
    com = rand(4)
    puts "ホイ！"
    puts "--------------"
    puts "あなた：#{finger[player.to_i]}を出しました"
    puts "相手：#{finger[com]}を出しました"
    if player.to_i == com
      puts "あなたの負けです"
      janken = false
    end
  end
  
  aiko = true
end
