describe RestaurantsController do
  let(:restaurant) { create :restaurant }

  describe '#show' do
    let(:request) { get :show, id: restaurant.id }
    it_renders_template(:show)
  end
end
