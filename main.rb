require "./methods.rb"

plans = [
  {place: "沖縄", price: 10000},
  {place: "北海道", price: 20000},
  {place: "九州", price: 15000}
]

display_plans(plans)
chosen_plan = choose_plan(plans)
reserved_number_of_people = enter_number_of_people(chosen_plan)
calculate_price(chosen_plan, reserved_number_of_people)