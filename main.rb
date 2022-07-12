puts <<~TEXT
  旅行プランを選択して下さい。

  1. 沖縄旅行(10000円)
  2. 北海道旅行(20000円)
  3. 九州旅行(15000円)
  
TEXT

while true
  print "プランの番号を選択 > "
  select_plan = gets.to_i
  case select_plan
  when 1
    name = "沖縄旅行"
    price = 10000
    puts "#{name}ですね。"
  when 2
    name = "北海道旅行"
    price = 20000
    puts "#{name}ですね"
  when 3
    name = "九州旅行"
    price = 15000
    puts "#{name}ですね"
  end

  break if (1..3).include?(select_plan)
  puts "1~3の番号を入力して下さい。"
end

while true
  puts "何名で予約されますか？"
  print "人数を入力 > "
  input_number_of_people = gets.to_i
  break if input_number_of_people >= 1
  puts "一人以上を入力して下さい。"
end

puts "#{input_number_of_people}名ですね。"
total_price = price * input_number_of_people

if input_number_of_people >= 5
  puts "5名以上ですので10%割引となります"
  total_price *= 0.9
end
puts "合計金額は#{total_price.floor}円になります。"




