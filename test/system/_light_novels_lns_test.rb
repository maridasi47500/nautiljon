require "application_system_test_case"

class LightNovelsLnsTest < ApplicationSystemTestCase
  setup do
    @_light_novels_ln = _light_novels_lns(:one)
  end

  test "visiting the index" do
    visit _light_novels_lns_url
    assert_selector "h1", text: "Light novels lns"
  end

  test "should create light novels ln" do
    visit _light_novels_lns_url
    click_on "New light novels ln"

    fill_in "Name", with: @_light_novels_ln.name
    click_on "Create Light novels ln"

    assert_text "Light novels ln was successfully created"
    click_on "Back"
  end

  test "should update Light novels ln" do
    visit _light_novels_ln_url(@_light_novels_ln)
    click_on "Edit this light novels ln", match: :first

    fill_in "Name", with: @_light_novels_ln.name
    click_on "Update Light novels ln"

    assert_text "Light novels ln was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels ln" do
    visit _light_novels_ln_url(@_light_novels_ln)
    click_on "Destroy this light novels ln", match: :first

    assert_text "Light novels ln was successfully destroyed"
  end
end
