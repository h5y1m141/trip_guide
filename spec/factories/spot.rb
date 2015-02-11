FactoryGirl.define do
  factory :spot do
    sequence(:official_url) { |n| "spot_official_url#{n}" }
    sequence(:name) { |n| "spot_name#{n}" }
    evaluation 1
    sequence(:title) { |n| "spot_title#{n}" }
    sequence(:description) { |n| "spot_description#{n}" }
    address 'spot_address'
    lat 26.694455
    lng 127.878099
  end
end
