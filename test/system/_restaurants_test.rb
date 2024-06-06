require "application_system_test_case"

class RestaurantsTest < ApplicationSystemTestCase
  setup do
    @_restaurant = _restaurants(:one)
  end

  test "visiting the index" do
    visit _restaurants_url
    assert_selector "h1", text: "Restaurants"
  end

  test "should create restaurant" do
    visit _restaurants_url
    click_on "New restaurant"

    fill_in "Restaurants pays", with: @_restaurant._restaurants_pays_id
    fill_in "Acceptregles", with: @_restaurant.acceptregles
    fill_in "Adresse", with: @_restaurant.adresse
    fill_in "Creation", with: @_restaurant.creation
    fill_in "Dept", with: @_restaurant.dept
    fill_in "Description", with: @_restaurant.description
    fill_in "Horaires", with: @_restaurant.horaires
    fill_in "Image", with: @_restaurant.image
    fill_in "Nom", with: @_restaurant.nom
    fill_in "Site", with: @_restaurant.site
    fill_in "Tel", with: @_restaurant.tel
    fill_in "Ville", with: @_restaurant.ville
    click_on "Create Restaurant"

    assert_text "Restaurant was successfully created"
    click_on "Back"
  end

  test "should update Restaurant" do
    visit _restaurant_url(@_restaurant)
    click_on "Edit this restaurant", match: :first

    fill_in "Restaurants pays", with: @_restaurant._restaurants_pays_id
    fill_in "Acceptregles", with: @_restaurant.acceptregles
    fill_in "Adresse", with: @_restaurant.adresse
    fill_in "Creation", with: @_restaurant.creation
    fill_in "Dept", with: @_restaurant.dept
    fill_in "Description", with: @_restaurant.description
    fill_in "Horaires", with: @_restaurant.horaires
    fill_in "Image", with: @_restaurant.image
    fill_in "Nom", with: @_restaurant.nom
    fill_in "Site", with: @_restaurant.site
    fill_in "Tel", with: @_restaurant.tel
    fill_in "Ville", with: @_restaurant.ville
    click_on "Update Restaurant"

    assert_text "Restaurant was successfully updated"
    click_on "Back"
  end

  test "should destroy Restaurant" do
    visit _restaurant_url(@_restaurant)
    click_on "Destroy this restaurant", match: :first

    assert_text "Restaurant was successfully destroyed"
  end
end
