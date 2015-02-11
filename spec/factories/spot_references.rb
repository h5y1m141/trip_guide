# == Schema Information
#
# Table name: spot_references
#
#  id           :integer          not null, primary key
#  kind         :integer          not null
#  ranking      :integer
#  satisfaction :float(24)
#  review_count :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryGirl.define do
  factory :spot_reference do
    kind :tripadvisor
    ranking 1
    satisfaction 1.5
    review_count 1
  end
end
