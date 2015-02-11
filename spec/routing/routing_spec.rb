RSpec.describe RestaurantsController, type: :routing do
  describe 'Routing' do
    it_routes_to(:get, '/restaurants/1', 'restaurants#show', id: '1')
    it_routes_to(:get, '/restaurants/near', 'restaurants#near')
  end
end

RSpec.describe SpotsController, type: :routing do
  describe 'Routing' do
    it_routes_to(:get, '/spots/near', 'spots#near')
  end
end
