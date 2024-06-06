require "application_system_test_case"

class MangasGroupesTest < ApplicationSystemTestCase
  setup do
    @_mangas_groupe = _mangas_groupes(:one)
  end

  test "visiting the index" do
    visit _mangas_groupes_url
    assert_selector "h1", text: "Mangas groupes"
  end

  test "should create mangas groupe" do
    visit _mangas_groupes_url
    click_on "New mangas groupe"

    fill_in "Name", with: @_mangas_groupe.name
    click_on "Create Mangas groupe"

    assert_text "Mangas groupe was successfully created"
    click_on "Back"
  end

  test "should update Mangas groupe" do
    visit _mangas_groupe_url(@_mangas_groupe)
    click_on "Edit this mangas groupe", match: :first

    fill_in "Name", with: @_mangas_groupe.name
    click_on "Update Mangas groupe"

    assert_text "Mangas groupe was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas groupe" do
    visit _mangas_groupe_url(@_mangas_groupe)
    click_on "Destroy this mangas groupe", match: :first

    assert_text "Mangas groupe was successfully destroyed"
  end
end
