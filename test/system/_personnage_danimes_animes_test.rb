require "application_system_test_case"

class PersonnageDanimesAnimesTest < ApplicationSystemTestCase
  setup do
    @_personnage_danimes_anime = _personnage_danimes_animes(:one)
  end

  test "visiting the index" do
    visit _personnage_danimes_animes_url
    assert_selector "h1", text: "Personnage danimes animes"
  end

  test "should create personnage danimes anime" do
    visit _personnage_danimes_animes_url
    click_on "New personnage danimes anime"

    fill_in "Name", with: @_personnage_danimes_anime.name
    click_on "Create Personnage danimes anime"

    assert_text "Personnage danimes anime was successfully created"
    click_on "Back"
  end

  test "should update Personnage danimes anime" do
    visit _personnage_danimes_anime_url(@_personnage_danimes_anime)
    click_on "Edit this personnage danimes anime", match: :first

    fill_in "Name", with: @_personnage_danimes_anime.name
    click_on "Update Personnage danimes anime"

    assert_text "Personnage danimes anime was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnage danimes anime" do
    visit _personnage_danimes_anime_url(@_personnage_danimes_anime)
    click_on "Destroy this personnage danimes anime", match: :first

    assert_text "Personnage danimes anime was successfully destroyed"
  end
end
