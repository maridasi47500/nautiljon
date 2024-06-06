require "application_system_test_case"

class FilmsAsiatiquesMangasTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_manga = _films_asiatiques_mangas(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_mangas_url
    assert_selector "h1", text: "Films asiatiques mangas"
  end

  test "should create films asiatiques manga" do
    visit _films_asiatiques_mangas_url
    click_on "New films asiatiques manga"

    fill_in "Name", with: @_films_asiatiques_manga.name
    click_on "Create Films asiatiques manga"

    assert_text "Films asiatiques manga was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques manga" do
    visit _films_asiatiques_manga_url(@_films_asiatiques_manga)
    click_on "Edit this films asiatiques manga", match: :first

    fill_in "Name", with: @_films_asiatiques_manga.name
    click_on "Update Films asiatiques manga"

    assert_text "Films asiatiques manga was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques manga" do
    visit _films_asiatiques_manga_url(@_films_asiatiques_manga)
    click_on "Destroy this films asiatiques manga", match: :first

    assert_text "Films asiatiques manga was successfully destroyed"
  end
end
