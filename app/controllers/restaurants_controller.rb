require 'geocoder'

class RestaurantsController < ApplicationController

  def show

  end

  def near
    Geocoder.configure(:language  => :ja, :units => :km )
    # 「馬かばい！」というお店を起点にする
    @head_store = Geocoder.search("東京都千代田区有楽町2-1-1 インターナショナルアーケード")[0].geometry['location'].values.join(',')
    restaurants = Restaurant.all
    restaurants.each do |restaurant|
      around_store = Geocoder.search(restaurant.address)[0].geometry['location'].values.join(',')
      @km = Geocoder::Calculations.distance_between(head_store,around_store)
      @m = km*1000
    end
  end
end
