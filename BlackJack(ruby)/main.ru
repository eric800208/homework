print "What's your name?"
player = gets.chomp
puts "Hi #{player}, Do you wanna play black jack? (y/n)"
y_or_n = gets.chomp

while y_or_n !="y" && y_or_n != "n"   #確認輸入為y or n 
 puts "Let's play?(y/n)"
 y_or_n = gets.chomp
end

while y_or_n == "y" #當輸入為y時 為閒家配牌 
 a = rand(1..4)  #閒家的花色&數字設訂
 b = rand(1..4)
 x = rand(1..13)
 y = rand(1..13)
 a_s = ""
 b_s = ""
 c_x = 0
 c_y = 0
 
 case a  
   when 1
   a_s = "Spade"
   when 2
   a_s = "Hearts"
   when 3
   a_s = "Diamond"
   when 4
   a_s = "Club"
 end

 case b
   when 1
   b_s = "Spade"
   when 2
   b_s = "Hearts"
   when 3
   b_s = "Diamond"
   when 4
   b_s = "Club"
 end
   
 if x == 1 
   c_x = "A"
   elsif x == 11
   c_x = "J"
   elsif x == 12
   c_x = "Q"
   elsif x == 13
   c_x = "K"
   else
   c_x = x
 end

 if y == 1 
   c_y = "A"
   elsif y == 11
   c_y = "J"
   elsif y == 12
   c_y = "Q"
   elsif y == 13
   c_y = "K"
   else
   c_y = y
 end
 

 
 while a == b && c_x == c_y #若是兩張牌重複 則重新抽抽兩張
   a = rand(1..4)
   b = rand(1..4)
   x = rand(1..13)
   y = rand(1..13)
   a_s = ""
   b_s = ""
   c_x = 0
   c_y = 0
 
   case a
     when 1
     a_s = "Spade"
     when 2
     a_s = "Hearts"
     when 3
     a_s = "Diamond"
     when 4
     a_s = "Club"
   end

   case b
     when 1
     b_s = "Spade"
     when 2
     b_s = "Hearts"
     when 3
     b_s = "Diamond"
     when 4
     b_s = "Club"
   end
   
   if x == 1 
     c_x = "A"
     elsif x == 11
     c_x = "J"
     elsif x == 12
     c_x = "Q"
     elsif x == 13
     c_x = "K"
     else
     c_x = x
   end

   if y == 1 
     c_y = "A"
     elsif y == 11
     c_y = "J"
     elsif y == 12
     c_y = "Q"
     elsif y == 13
     c_y = "K"
     else
     c_y = y
   end
 end

 if x == 11 || x == 12 || x == 13 #當抽到 J Q K時數字轉換成 10
   n_x = 10
   else
   n_x = x
 end
 if y == 11 || y == 12 || y == 13
   n_y = 10
   else 
   n_y = y
 end


 
 your_card = [[a_s,c_x.to_s],[b_s,c_y.to_s]] #儲存花色數字(String)
 your_total = [n_x.to_i,n_y.to_i] #儲存數字大小(Numeric)

 

 sum = n_x + n_y
 
 if sum <= 21  #當總數<21時 A為11
   if c_x =="A" 
     n_x = 11
   end
   if c_y =="A"
     n_y = 11
   end
  else
 end
 
 sum = n_x + n_y
 
 

 while sum > 21  #當總數>21時 A為1 重新計算sum
   for i in (0..your_card.length-1)
     if your_total[i] == 11
       your_total[i] = 1  
     end
   end
   sum = 0
   your_total.each do |num|    
     sum = sum + num.to_i
   end
   break
 end
 
 

 your_card = [[a_s,c_x.to_s],[b_s,c_y.to_s]] #更新資料
 your_total = [n_x.to_i,n_y.to_i]
 puts "Here is your cards."
 for i in (0..your_card.length) #顯示閒家手牌
   print your_card[i]
 end
 puts ""
 puts "Your total is #{sum}"

 while sum <= 21  #幫莊家派牌
   dealer_a = rand(1..4)
   dealer_b = rand(1..4)
   dealer_x = rand(1..13)
   dealer_y = rand(1..13)
   dealer_a_s = ""
   dealer_b_s = ""
   dealer_c_x = 0
   dealer_c_y = 0
 
 case dealer_a
   when 1
   dealer_a_s = "Spade"
   when 2
   dealer_a_s = "Hearts"
   when 3
   dealer_a_s = "Diamond"
   when 4
   dealer_a_s = "Club"
 end

 case dealer_b
   when 1
   dealer_b_s = "Spade"
   when 2
   dealer_b_s = "Hearts"
   when 3
   dealer_b_s = "Diamond"
   when 4
   dealer_b_s = "Club"
 end
   
 if dealer_x == 1 
   dealer_c_x = "A"
   elsif dealer_x == 11
   dealer_c_x = "J"
   elsif dealer_x == 12
   dealer_c_x = "Q"
   elsif dealer_x == 13
   dealer_c_x = "K"
   else
   dealer_c_x = dealer_x
 end

 if dealer_y == 1 
   dealer_c_y = "A"
   elsif dealer_y == 11
   dealer_c_y = "J"
   elsif dealer_y == 12
   dealer_c_y = "Q"
   elsif dealer_y == 13
   dealer_c_y = "K"
   else
   dealer_c_y = dealer_y
 end
 
  while (dealer_a == a && dealer_x ==c_x)||(dealer_a == b && dealer_x == c_y) #若抽到的牌與閒家相同則重抽
 dealer_a = rand(1..4)
 dealer_x = rand(1..13)
 dealer_a_s = ""
 dealer_c_x = 0

 case dealer_a
   when 1
   dealer_a_s = "Spade"
   when 2
   dealer_a_s = "Hearts"
   when 3
   dealer_a_s = "Diamond"
   when 4
   dealer_a_s = "Club"
 end
 if dealer_x == 1 
   dealer_c_x = "A"
   elsif x == 11
   dealer_c_x = "J"
   elsif x == 12
   dealer_c_x = "Q"
   elsif x == 13
   dealer_c_x = "K"
   else
   dealer_c_x = x
 end
end

 while (dealer_b == a && dealer_y ==c_x)||(dealer_b == b && dealer_y == c_y) #若抽到的牌與閒家相同則重抽
   case dealer_b
     when 1
     dealer_b_s = "Spade"
     when 2
     dealer_b_s = "Hearts"
     when 3
     dealer_b_s = "Diamond"
     when 4
     dealer_b_s = "Club"
   end
   if dealer_y == 1 
     dealer_c_y = "A"
     elsif y == 11
     dealer_c_y = "J"
     elsif y == 12
     dealer_c_y = "Q"
     elsif y == 13
     dealer_c_y = "K"
     else
     dealer_c_y = y
   end
 end

 while dealer_a == dealer_b && dealer_c_x == dealer_c_y #避免莊家抽到相同的牌
   dealer_a = rand(1..4)
   dealer_b = rand(1..4)
   dealer_x = rand(1..13)
   dealer_y = rand(1..13)
   dealer_a_s = ""
   dealer_b_s = ""
   dealer_c_x = 0
   dealer_c_y = 0
 
   case dealer_a
     when 1
     dealer_a_s = "Spade"
     when 2
     dealer_a_s = "Hearts"
     when 3
     dealer_a_s = "Diamond"
     when 4
     dealer_a_s = "Club"
   end

   case dealer_b
     when 1
     dealer_b_s = "Spade"
     when 2
     dealer_b_s = "Hearts"
     when 3
     dealer_b_s = "Diamond"
     when 4
     dealer_b_s = "Club"
   end
   
   if x == 1 
     dealer_c_x = "A"
     elsif x == 11
     dealer_c_x = "J"
     elsif x == 12
     dealer_c_x = "Q"
     elsif x == 13
     dealer_c_x = "K"
     else
     dealer_c_x = x
   end

   if dealer_y == 1 
     dealer_c_y = "A"
     elsif y == 11
     dealer_c_y = "J"
     elsif y == 12
     dealer_c_y = "Q"
     elsif y == 13
     dealer_c_y = "K"
     else
     dealer_c_y = y
   end
 end

 

 if dealer_x == 11 || dealer_x == 12 || dealer_x == 13 #將 J Q K 轉換為 10
   dealer_n_x = 10
   else
   dealer_n_x = dealer_x
 end
 if dealer_y == 11 || dealer_y == 12 || dealer_y == 13
   dealer_n_y = 10
   else 
   dealer_n_y = dealer_y
 end

 dealer_card = [[dealer_a_s,dealer_c_x.to_s],[dealer_b_s,dealer_c_y.to_s]] #儲存花色數字(String))
 dealer_total = [dealer_n_x.to_i,dealer_n_y.to_i] #儲存數字大小(Numeric)

 dealer_sum = dealer_n_x + dealer_n_y
 
 if dealer_sum <= 21 #當 總數小於21時 A為11
   if dealer_c_x =="A" 
     dealer_n_x = 11
   end
    if dealer_c_y =="A"
      dealer_n_y = 11
    end
    else
   end
   
   dealer_sum = dealer_n_x + dealer_n_y 
 
   while dealer_sum > 21   #當 總數小於21時 A為1
   for i in (0..dealer_card.length-1)
     if dealer_total[i] == 11
         dealer_total[i] = 1  
       end
     end
     dealer_sum = 0  #重新計算莊家總合
     dealer_total.each do |num|    
       dealer_sum = dealer_sum + num.to_i
     end
     break
   end
 
 

   
   puts "Here is one of dealer's card."
   for i in (0..dealer_card.length-2) #顯示莊家的第一張牌
     print "#{dealer_card[i]}[block]"
   end
   puts ""
   break
  end 
 
 
 pullcard = "y" 
 
 while sum < 21 && your_card.length < 5 && pullcard == "y" #閒家點數<21且手牌不超過五張而且還要牌時，當點數21時自動不幫閒家派牌
   puts "How about one more card?(y/n)"
   pullcard = gets.chomp
   while pullcard != "y" && pullcard != "n" #確認輸入的為y or n
     puts "How about one more card? (y/n)"
     pullcard = gets.chomp
   end
   
   if pullcard == "y" #當繼續要牌時
     c = rand(1..4)  #為發出的牌設訂
     z = rand(1..13)
     case c
       when 1
       c_s = "Spade"
       when 2
       c_s = "Hearts"
       when 3
       c_s = "Diamond"
       when 4
       c_s = "Club"
     end
     if z == 1 
       c_z = "A"
       elsif z == 11
       c_z = "J"
       elsif z == 12
       c_z = "Q"
       elsif z == 13
       c_z = "K"
       else
       c_z = z
     end
     if z == 11 || z == 12 || z == 13
       n_z = 10
       else
       n_z = z
     end

     for i in (0..your_card.length) #確認閒家的下一張牌是否跟閒家手上的牌是否相同
       while [c_s,c_z.to_s] == your_card[i]
         c = rand(1..4)  
         z = rand(1..13)
         case c
           when 1
           c_s = "Spade"
           when 2
           c_s = "Hearts"
           when 3
           c_s = "Diamond"
           when 4
           c_s = "Club"
         end
         if z == 1 
           c_z = "A"
           elsif z == 11
           c_z = "J"
           elsif z == 12
           c_z = "Q"
           elsif z == 13
           c_z = "K"
           else
           c_z = z
         end
         if z == 11 || z == 12 || z == 13
           n_z = 10
           else
           n_z = z
         end
         break
       end
     end

                 
     for i in (0..dealer_card.length) #確認閒家的下一張牌是否跟莊家手上的牌是否相同
       while [c_s,c_z.to_s] == dealer_card[i]
         c = rand(1..4)  
         z = rand(1..13)
         case c
           when 1
           c_s = "Spade"
           when 2
           c_s = "Hearts"
           when 3
           c_s = "Diamond"
           when 4
           c_s = "Club"
         end
         if z == 1 
           c_z = "A"
           elsif z == 11
           c_z = "J"
           elsif z == 12
           c_z = "Q"
           elsif z == 13
           c_z = "K"
           else
           c_z = z
         end
         if z == 11 || z == 12 || z == 13
           n_z = 10
           else
           n_z = z
         end
         break
       end
     end

     while sum <= 21 #再次確認A的大小
       if c_z =="A" 
         n_z = 11
       end
       break
     end

     
     
     
     sum = 0
     
     your_card.push([c_s,c_z.to_s]) #將抽出的牌儲存花色數字
     your_total.push(n_z.to_i) #將儲存數字大小
     
    
         
     sum = 0

     your_total.each do |num|   #再次計算總和
       sum = sum + num.to_i
     end

     while sum > 21  #再次確認A的大小
       for i in (0..your_card.length)
         if your_total[i] == 11
           your_total[i] = 1  
         end
       end
       break
     end

     sum = 0  #確認A的大小後再計算一次總和

     your_total.each do |num|    
       sum = sum + num.to_i
     end


     puts"You hit the card."
     puts "Here is your cards."
     for i in (0..your_card.length)
       print your_card[i]
     end
     puts ""
     puts "Your total is #{sum}"
   end
 end #閒家派完牌
  
 if pullcard == "n" #當閒家不要牌後
   puts "Here is your cards."
   for i in (0..your_card.length)
     print your_card[i]
   end
   puts ""
 end

 while sum == 21 && your_card.length != 5  #當閒家為21點時告知不幫閒家派牌
   puts "Dealer : I think you don't need, right?"
   break
 end

 puts"Dealer open his another card." #莊家開牌
 for i in (0..dealer_card.length-1)
   print dealer_card[i]
 end
 puts""
 
  while  dealer_sum <17 && sum >= dealer_sum && sum <= 21 && your_card.length != 5
  puts"Dealer hit the card." #當閒家總和 > 莊家且莊家小於17強制補牌
   dealer_c = rand(1..4)  #幫莊家的下一張牌設訂
   dealer_z = rand(1..13)
     case dealer_c
       when 1
       dealer_c_s = "Spade"
       when 2
       dealer_c_s = "Hearts"
       when 3
       dealer_c_s = "Diamond"
       when 4
       dealer_c_s = "Club"
     end
     if dealer_z == 1 
       dealer_c_z = "A"
       elsif dealer_z == 11
       dealer_c_z = "J"
       elsif dealer_z == 12
       dealer_c_z = "Q"
       elsif dealer_z == 13
       dealer_c_z = "K"
       else
       dealer_c_z = dealer_z
     end
     if dealer_z == 11 || dealer_z == 12 || dealer_z == 13
       dealer_n_z = 10
       else
       dealer_n_z = dealer_z
     end
      
      for i in (0..your_card.length) #確認莊家的下一張牌不會跟閒家手上的牌重複
       while [dealer_c_s,dealer_c_z.to_s] == your_card[i]
         dealer_c = rand(1..4)  
         dealer_z = rand(1..13)
         case dealer_c
           when 1
           dealer_c_s = "Spade"
           when 2
           dealer_c_s = "Hearts"
           when 3
           dealer_c_s = "Diamond"
           when 4
           dealer_c_s = "Club"
         end
         if dealer_z == 1 
           dealer_c_z = "A"
           elsif z == 11
           dealer_c_z = "J"
           elsif z == 12
           dealer_c_z = "Q"
           elsif z == 13
           dealer_c_z = "K"
           else
           dealer_c_z = z
         end
         if dealer_z == 11 || dealer_z == 12 || dealer_z == 13
           dealer_n_z = 10
           else
           dealer_n_z = z
         end
         break
       end
     end

     for i in (0..dealer_card.length) #確認莊家的下一張牌不會跟莊家手上的牌重複
       while [dealer_c_s,dealer_c_z.to_s] == dealer_card[i]
         dealer_c = rand(1..4)  
         dealer_z = rand(1..13)
         case dealer_c
           when 1
           dealer_c_s = "Spade"
           when 2
           dealer_c_s = "Hearts"
           when 3
           dealer_c_s = "Diamond"
           when 4
           dealer_c_s = "Club"
         end
         if dealer_z == 1 
           dealer_c_z = "A"
           elsif z == 11
           dealer_c_z = "J"
           elsif z == 12
           dealer_c_z = "Q"
           elsif z == 13
           dealer_c_z = "K"
           else
           dealer_c_z = z
         end
         if dealer_z == 11 || dealer_z == 12 || dealer_z == 13
           dealer_n_z = 10
           else
           dealer_n_z = z
         end
         break
       end
     end
     

     while dealer_sum <= 21 #設訂A大小
       if dealer_c_z =="A" 
         dealer_n_z = 11
       end
       break
     end

     dealer_card.push([dealer_c_s,dealer_c_z.to_s]) #將莊家下一張牌花色數字儲存
     dealer_total.push(dealer_n_z.to_i) #將莊家下一張數字大小儲存
     
         
     dealer_sum = 0 

     dealer_total.each do |num|   #計算加上下一張牌的總和
       dealer_sum = dealer_sum + num.to_i
     end

     while dealer_sum > 21 #確認莊家手上的A的大小
       for i in (0..dealer_card.length)
         if dealer_total[i] == 11
           dealer_total[i] = 1  
         end
       end
       break
     end

     dealer_sum = 0

     dealer_total.each do |num|   #在做一次計算
       dealer_sum = dealer_sum + num.to_i
     end

    

     puts "Here is dealer's cards."
     for i in (0..dealer_card.length)
       print dealer_card[i]
     end
     puts ""
     puts "Dealer's total is #{dealer_sum}"
  end #莊家派完一張牌
  
  while sum > dealer_sum && dealer_card.length != 5 && dealer_sum <= 21 && sum <=21 &&dealer_sum >= 17
  puts"Dealer hit the card." #當閒家總和 > 莊家且莊家手牌小於五張 且莊家<21點 且閒家<=21點時
   dealer_c = rand(1..4)  #幫莊家的下一張牌設訂
   dealer_z = rand(1..13)
     case dealer_c
       when 1
       dealer_c_s = "Spade"
       when 2
       dealer_c_s = "Hearts"
       when 3
       dealer_c_s = "Diamond"
       when 4
       dealer_c_s = "Club"
     end
     if dealer_z == 1 
       dealer_c_z = "A"
       elsif dealer_z == 11
       dealer_c_z = "J"
       elsif dealer_z == 12
       dealer_c_z = "Q"
       elsif dealer_z == 13
       dealer_c_z = "K"
       else
       dealer_c_z = dealer_z
     end
     if dealer_z == 11 || dealer_z == 12 || dealer_z == 13
       dealer_n_z = 10
       else
       dealer_n_z = dealer_z
     end
      
      for i in (0..your_card.length) #確認莊家的下一張牌不會跟閒家手上的牌重複
       while [dealer_c_s,dealer_c_z.to_s] == your_card[i]
         dealer_c = rand(1..4)  
         dealer_z = rand(1..13)
         case dealer_c
           when 1
           dealer_c_s = "Spade"
           when 2
           dealer_c_s = "Hearts"
           when 3
           dealer_c_s = "Diamond"
           when 4
           dealer_c_s = "Club"
         end
         if dealer_z == 1 
           dealer_c_z = "A"
           elsif z == 11
           dealer_c_z = "J"
           elsif z == 12
           dealer_c_z = "Q"
           elsif z == 13
           dealer_c_z = "K"
           else
           dealer_c_z = z
         end
         if dealer_z == 11 || dealer_z == 12 || dealer_z == 13
           dealer_n_z = 10
           else
           dealer_n_z = z
         end
         break
       end
     end

     for i in (0..dealer_card.length) #確認莊家的下一張牌不會跟莊家手上的牌重複
       while [dealer_c_s,dealer_c_z.to_s] == dealer_card[i]
         dealer_c = rand(1..4)  
         dealer_z = rand(1..13)
         case dealer_c
           when 1
           dealer_c_s = "Spade"
           when 2
           dealer_c_s = "Hearts"
           when 3
           dealer_c_s = "Diamond"
           when 4
           dealer_c_s = "Club"
         end
         if dealer_z == 1 
           dealer_c_z = "A"
           elsif z == 11
           dealer_c_z = "J"
           elsif z == 12
           dealer_c_z = "Q"
           elsif z == 13
           dealer_c_z = "K"
           else
           dealer_c_z = z
         end
         if dealer_z == 11 || dealer_z == 12 || dealer_z == 13
           dealer_n_z = 10
           else
           dealer_n_z = z
         end
         break
       end
     end
     

     while dealer_sum <= 21 #設訂A大小
       if dealer_c_z =="A" 
         dealer_n_z = 11
       end
       break
     end

     dealer_card.push([dealer_c_s,dealer_c_z.to_s]) #將莊家下一張牌花色數字儲存
     dealer_total.push(dealer_n_z.to_i) #將莊家下一張數字大小儲存
     
         
     dealer_sum = 0 

     dealer_total.each do |num|   #計算加上下一張牌的總和
       dealer_sum = dealer_sum + num.to_i
     end

     while dealer_sum > 21 #確認莊家手上的A的大小
       for i in (0..dealer_card.length)
         if dealer_total[i] == 11
           dealer_total[i] = 1  
         end
       end
       break
     end

     dealer_sum = 0

     dealer_total.each do |num|   #在做一次計算
       dealer_sum = dealer_sum + num.to_i
     end

    

     puts "Here is dealer's cards."
     for i in (0..dealer_card.length)
       print dealer_card[i]
     end
     puts ""
     puts "Dealer's total is #{dealer_sum}"
   end #莊家派完一張牌
  
   while dealer_card.length == 2 && sum < 21 #若是閒家只有兩張牌且不派牌時
     puts "Here is dealer's cards."
     for i in (0..dealer_card.length)
       print dealer_card[i]
     end
     puts""
     puts "Dealer's total is #{dealer_sum}"
     break
   end   
  
  #以下為判斷勝負
  while dealer_sum > 21 && sum <= 21 
   puts "Dealer explode, you won!!"
   break
  end

  while dealer_card.length == 5 && dealer_sum <=21 && your_card.length != 5 
   puts "Dealer : You got no lucky today, Sorry."
   puts "Dealer won with five card"
   break
  end
  
  while your_card.length == 5 && dealer_card.length == 5 && sum <= 21 && dealer_sum <= 21
   puts "Dealer : We are lucky today."
   puts "It's a extraordinary draw."
   break
  end

  while dealer_sum <= 21
  
   if sum > 21 && your_card.length < 5
     puts "Explosion!!!! YOU LOST."
     else
       if sum > dealer_sum && sum < 21 && sum != 21
         puts "Your total is #{sum}"
         puts "You won!!"
         elsif sum < dealer_sum  && your_card.length != 5
         puts "Your total is #{sum}"
         puts "You lost!!"
         elsif sum == dealer_sum && your_card.length != 5 && sum != 21
         puts "Your total is #{sum}"
         puts "It's a draw."
       end
     end
   while your_card.length == 5 
     if sum <= 21
       puts "Dealer : You are lucky today."
       puts "You won with five cards!!"
       break
       elsif sum > 21
       puts "Explosion!!!! YOU LOST."
       break
     end
   end
   
   while sum == 21 && your_card.length != 5 
     if dealer_sum < sum
       puts "Your total is #{sum}"
       puts ""
       puts "Dealer's total is #{dealer_sum}"
       puts "You won!!"
       elsif dealer_sum == sum
       puts "Your total is #{sum}"
       puts "Dealer's total is #{dealer_sum}"
       puts "It's a draw."
      end
    break
   end
  break
end
 puts "How about one more game?(y/n)" #詢問是否繼續遊戲
 y_or_n = gets.chomp
 while y_or_n !="y" && y_or_n != "n"
   puts "Do you wanna play one more game?(y/n)"
   y_or_n = gets.chomp
 end
end


while y_or_n =="n" #當結束遊戲時
 puts "Hope you having fun in the game, #{player}."
break
end