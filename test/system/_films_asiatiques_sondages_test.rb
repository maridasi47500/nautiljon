require "application_system_test_case"

class FilmsAsiatiquesSondagesTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_sondage = _films_asiatiques_sondages(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_sondages_url
    assert_selector "h1", text: "Films asiatiques sondages"
  end

  test "should create films asiatiques sondage" do
    visit _films_asiatiques_sondages_url
    click_on "New films asiatiques sondage"

    fill_in "Name", with: @_films_asiatiques_sondage.name
    click_on "Create Films asiatiques sondage"

    assert_text "Films asiatiques sondage was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques sondage" do
    visit _films_asiatiques_sondage_url(@_films_asiatiques_sondage)
    click_on "Edit this films asiatiques sondage", match: :first

    fill_in "Name", with: @_films_asiatiques_sondage.name
    click_on "Update Films asiatiques sondage"

    assert_text "Films asiatiques sondage was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques sondage" do
    visit _films_asiatiques_sondage_url(@_films_asiatiques_sondage)
    click_on "Destroy this films asiatiques sondage", match: :first

    assert_text "Films asiatiques sondage was successfully destroyed"
  end
end
