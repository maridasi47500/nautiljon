require "application_system_test_case"

class FilmsAsiatiquesMangaPlusTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_manga_plu = _films_asiatiques_manga_plus(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_manga_plus_url
    assert_selector "h1", text: "Films asiatiques manga plus"
  end

  test "should create films asiatiques manga plu" do
    visit _films_asiatiques_manga_plus_url
    click_on "New films asiatiques manga plu"

    fill_in "Name", with: @_films_asiatiques_manga_plu.name
    click_on "Create Films asiatiques manga plu"

    assert_text "Films asiatiques manga plu was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques manga plu" do
    visit _films_asiatiques_manga_plu_url(@_films_asiatiques_manga_plu)
    click_on "Edit this films asiatiques manga plu", match: :first

    fill_in "Name", with: @_films_asiatiques_manga_plu.name
    click_on "Update Films asiatiques manga plu"

    assert_text "Films asiatiques manga plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques manga plu" do
    visit _films_asiatiques_manga_plu_url(@_films_asiatiques_manga_plu)
    click_on "Destroy this films asiatiques manga plu", match: :first

    assert_text "Films asiatiques manga plu was successfully destroyed"
  end
end
