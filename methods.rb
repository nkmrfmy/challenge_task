def display_plans(plans) # 旅行プランの表示
  puts "旅行プランを選択して下さい。"
  plans.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:place]}旅行(#{plan[:price]}円)"
  end
end

def choose_plan(plans) # 旅行プランの選択
  while true
    print "プランの番号を選択 > "
    select_plan_num = gets.to_i
    break if (1..3).include?(select_plan_num)
    puts "１〜３の番号を入力して下さい。"
  end
  plans[select_plan_num -1]  
end

def enter_number_of_people(chosen_plan) # 予約人数の入力
  puts "#{chosen_plan[:place]}旅行ですね。"
  while true
    puts "何名で予約されますか？"
    print "人数を入力 > "
    input_number_of_people = gets.to_i
    break if input_number_of_people >= 1
    puts "１以上を入力して下さい。"
  end
  input_number_of_people
end


def calculate_price(choose_plan, reserved_number_of_people) 
  puts "#{reserved_number_of_people}名ですね。"
  total_price = choose_plan[:price] * reserved_number_of_people
  if reserved_number_of_people >= 5
    puts "5名以上ですので10%割引となります"
    total_price *= 0.9
  end
  puts "合計金額は#{total_price.floor}円になります。"
end

