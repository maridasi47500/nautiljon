require "application_system_test_case"

class LightNovelsCommercesTest < ApplicationSystemTestCase
  setup do
    @_light_novels_commerce = _light_novels_commerces(:one)
  end

  test "visiting the index" do
    visit _light_novels_commerces_url
    assert_selector "h1", text: "Light novels commerces"
  end

  test "should create light novels commerce" do
    visit _light_novels_commerces_url
    click_on "New light novels commerce"

    fill_in "Name", with: @_light_novels_commerce.name
    click_on "Create Light novels commerce"

    assert_text "Light novels commerce was successfully created"
    click_on "Back"
  end

  test "should update Light novels commerce" do
    visit _light_novels_commerce_url(@_light_novels_commerce)
    click_on "Edit this light novels commerce", match: :first

    fill_in "Name", with: @_light_novels_commerce.name
    click_on "Update Light novels commerce"

    assert_text "Light novels commerce was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels commerce" do
    visit _light_novels_commerce_url(@_light_novels_commerce)
    click_on "Destroy this light novels commerce", match: :first

    assert_text "Light novels commerce was successfully destroyed"
  end
end
