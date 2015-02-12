require 'geocoder'

namespace :distance do
  desc "distance_info"
  task :restaurant => :environment do

    Geocoder.configure(:language  => :ja, :units => :km )
    t1 = Geocoder.search("東京都千代田区有楽町2-1-1 インターナショナルアーケード")[0].geometry['location'].values.join(',')

    restaurants = Restaurant.all
    restaurants.each do |restaurant|
      t2 = Geocoder.search(restaurant.address)[0].geometry['location'].values.join(',')

      km = Geocoder::Calculations.distance_between(t1,t2)
      m = km*1000
      puts m
    end
  end
end
