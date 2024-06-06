require "test_helper"

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_restaurant = _restaurants(:one)
  end

  test "should get index" do
    get _restaurants_url
    assert_response :success
  end

  test "should get new" do
    get new__restaurant_url
    assert_response :success
  end

  test "should create _restaurant" do
    assert_difference("Restaurant.count") do
      post _restaurants_url, params: { _restaurant: { _restaurants_pays_id: @_restaurant._restaurants_pays_id, acceptregles: @_restaurant.acceptregles, adresse: @_restaurant.adresse, creation: @_restaurant.creation, dept: @_restaurant.dept, description: @_restaurant.description, horaires: @_restaurant.horaires, image: @_restaurant.image, nom: @_restaurant.nom, site: @_restaurant.site, tel: @_restaurant.tel, ville: @_restaurant.ville } }
    end

    assert_redirected_to _restaurant_url(Restaurant.last)
  end

  test "should show _restaurant" do
    get _restaurant_url(@_restaurant)
    assert_response :success
  end

  test "should get edit" do
    get edit__restaurant_url(@_restaurant)
    assert_response :success
  end

  test "should update _restaurant" do
    patch _restaurant_url(@_restaurant), params: { _restaurant: { _restaurants_pays_id: @_restaurant._restaurants_pays_id, acceptregles: @_restaurant.acceptregles, adresse: @_restaurant.adresse, creation: @_restaurant.creation, dept: @_restaurant.dept, description: @_restaurant.description, horaires: @_restaurant.horaires, image: @_restaurant.image, nom: @_restaurant.nom, site: @_restaurant.site, tel: @_restaurant.tel, ville: @_restaurant.ville } }
    assert_redirected_to _restaurant_url(@_restaurant)
  end

  test "should destroy _restaurant" do
    assert_difference("Restaurant.count", -1) do
      delete _restaurant_url(@_restaurant)
    end

    assert_redirected_to _restaurants_url
  end
end
