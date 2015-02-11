FactoryGirl.define do
  factory :restaurant do
    sequence(:tabelog_url) { |n| "restaurant_tabelog_url#{n}" }
    sequence(:name) { |n|  "restaurant_name#{n}" }
    evaluation 1
    sequence(:title) { |n| "restaurant_title#{n}" }
    sequence(:description) { |n| "restaurant_description#{n}" }
    sequence(:address) { |n| "restaurant_address#{n}" }
    lat 26.694455
    lng 127.878099
  end
end
