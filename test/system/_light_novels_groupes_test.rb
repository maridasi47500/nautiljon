require "application_system_test_case"

class LightNovelsGroupesTest < ApplicationSystemTestCase
  setup do
    @_light_novels_groupe = _light_novels_groupes(:one)
  end

  test "visiting the index" do
    visit _light_novels_groupes_url
    assert_selector "h1", text: "Light novels groupes"
  end

  test "should create light novels groupe" do
    visit _light_novels_groupes_url
    click_on "New light novels groupe"

    fill_in "Name", with: @_light_novels_groupe.name
    click_on "Create Light novels groupe"

    assert_text "Light novels groupe was successfully created"
    click_on "Back"
  end

  test "should update Light novels groupe" do
    visit _light_novels_groupe_url(@_light_novels_groupe)
    click_on "Edit this light novels groupe", match: :first

    fill_in "Name", with: @_light_novels_groupe.name
    click_on "Update Light novels groupe"

    assert_text "Light novels groupe was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels groupe" do
    visit _light_novels_groupe_url(@_light_novels_groupe)
    click_on "Destroy this light novels groupe", match: :first

    assert_text "Light novels groupe was successfully destroyed"
  end
end
