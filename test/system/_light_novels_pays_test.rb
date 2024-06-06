require "application_system_test_case"

class LightNovelsPaysTest < ApplicationSystemTestCase
  setup do
    @_light_novels_pay = _light_novels_pays(:one)
  end

  test "visiting the index" do
    visit _light_novels_pays_url
    assert_selector "h1", text: "Light novels pays"
  end

  test "should create light novels pay" do
    visit _light_novels_pays_url
    click_on "New light novels pay"

    fill_in "Name", with: @_light_novels_pay.name
    click_on "Create Light novels pay"

    assert_text "Light novels pay was successfully created"
    click_on "Back"
  end

  test "should update Light novels pay" do
    visit _light_novels_pay_url(@_light_novels_pay)
    click_on "Edit this light novels pay", match: :first

    fill_in "Name", with: @_light_novels_pay.name
    click_on "Update Light novels pay"

    assert_text "Light novels pay was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels pay" do
    visit _light_novels_pay_url(@_light_novels_pay)
    click_on "Destroy this light novels pay", match: :first

    assert_text "Light novels pay was successfully destroyed"
  end
end
