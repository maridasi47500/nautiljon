require "application_system_test_case"

class LightNovelsArtbooksTest < ApplicationSystemTestCase
  setup do
    @_light_novels_artbook = _light_novels_artbooks(:one)
  end

  test "visiting the index" do
    visit _light_novels_artbooks_url
    assert_selector "h1", text: "Light novels artbooks"
  end

  test "should create light novels artbook" do
    visit _light_novels_artbooks_url
    click_on "New light novels artbook"

    fill_in "Name", with: @_light_novels_artbook.name
    click_on "Create Light novels artbook"

    assert_text "Light novels artbook was successfully created"
    click_on "Back"
  end

  test "should update Light novels artbook" do
    visit _light_novels_artbook_url(@_light_novels_artbook)
    click_on "Edit this light novels artbook", match: :first

    fill_in "Name", with: @_light_novels_artbook.name
    click_on "Update Light novels artbook"

    assert_text "Light novels artbook was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels artbook" do
    visit _light_novels_artbook_url(@_light_novels_artbook)
    click_on "Destroy this light novels artbook", match: :first

    assert_text "Light novels artbook was successfully destroyed"
  end
end
