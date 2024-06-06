require "application_system_test_case"

class RestaurantsPaysTest < ApplicationSystemTestCase
  setup do
    @_restaurants_pay = _restaurants_pays(:one)
  end

  test "visiting the index" do
    visit _restaurants_pays_url
    assert_selector "h1", text: "Restaurants pays"
  end

  test "should create restaurants pay" do
    visit _restaurants_pays_url
    click_on "New restaurants pay"

    fill_in "Name", with: @_restaurants_pay.name
    click_on "Create Restaurants pay"

    assert_text "Restaurants pay was successfully created"
    click_on "Back"
  end

  test "should update Restaurants pay" do
    visit _restaurants_pay_url(@_restaurants_pay)
    click_on "Edit this restaurants pay", match: :first

    fill_in "Name", with: @_restaurants_pay.name
    click_on "Update Restaurants pay"

    assert_text "Restaurants pay was successfully updated"
    click_on "Back"
  end

  test "should destroy Restaurants pay" do
    visit _restaurants_pay_url(@_restaurants_pay)
    click_on "Destroy this restaurants pay", match: :first

    assert_text "Restaurants pay was successfully destroyed"
  end
end
