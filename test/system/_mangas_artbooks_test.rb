require "application_system_test_case"

class MangasArtbooksTest < ApplicationSystemTestCase
  setup do
    @_mangas_artbook = _mangas_artbooks(:one)
  end

  test "visiting the index" do
    visit _mangas_artbooks_url
    assert_selector "h1", text: "Mangas artbooks"
  end

  test "should create mangas artbook" do
    visit _mangas_artbooks_url
    click_on "New mangas artbook"

    fill_in "Name", with: @_mangas_artbook.name
    click_on "Create Mangas artbook"

    assert_text "Mangas artbook was successfully created"
    click_on "Back"
  end

  test "should update Mangas artbook" do
    visit _mangas_artbook_url(@_mangas_artbook)
    click_on "Edit this mangas artbook", match: :first

    fill_in "Name", with: @_mangas_artbook.name
    click_on "Update Mangas artbook"

    assert_text "Mangas artbook was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas artbook" do
    visit _mangas_artbook_url(@_mangas_artbook)
    click_on "Destroy this mangas artbook", match: :first

    assert_text "Mangas artbook was successfully destroyed"
  end
end
