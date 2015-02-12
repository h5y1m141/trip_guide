require 'geocoder'

namespace :distance do
  desc "distance_info"
  task :restaurant => :environment do

    Geocoder.configure(:language  => :ja, :units => :km )

    t1 = Geocoder.search("東京都千代田区有楽町1-8-1 ザ・ペニンシュラ東京１Ｆ")[0].geometry['location'].values.join(',')
    t2 = Geocoder.search("東京都千代田区有楽町2-1-8")[0].geometry['location'].values.join(',')

    km = Geocoder::Calculations.distance_between(t1,t2)
    puts km
  end
end
