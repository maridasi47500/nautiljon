require "application_system_test_case"

class MangasConcoursTest < ApplicationSystemTestCase
  setup do
    @_mangas_concour = _mangas_concours(:one)
  end

  test "visiting the index" do
    visit _mangas_concours_url
    assert_selector "h1", text: "Mangas concours"
  end

  test "should create mangas concour" do
    visit _mangas_concours_url
    click_on "New mangas concour"

    fill_in "Name", with: @_mangas_concour.name
    click_on "Create Mangas concour"

    assert_text "Mangas concour was successfully created"
    click_on "Back"
  end

  test "should update Mangas concour" do
    visit _mangas_concour_url(@_mangas_concour)
    click_on "Edit this mangas concour", match: :first

    fill_in "Name", with: @_mangas_concour.name
    click_on "Update Mangas concour"

    assert_text "Mangas concour was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas concour" do
    visit _mangas_concour_url(@_mangas_concour)
    click_on "Destroy this mangas concour", match: :first

    assert_text "Mangas concour was successfully destroyed"
  end
end
