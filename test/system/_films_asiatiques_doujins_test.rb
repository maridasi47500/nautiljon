require "application_system_test_case"

class FilmsAsiatiquesDoujinsTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_doujin = _films_asiatiques_doujins(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_doujins_url
    assert_selector "h1", text: "Films asiatiques doujins"
  end

  test "should create films asiatiques doujin" do
    visit _films_asiatiques_doujins_url
    click_on "New films asiatiques doujin"

    fill_in "Name", with: @_films_asiatiques_doujin.name
    click_on "Create Films asiatiques doujin"

    assert_text "Films asiatiques doujin was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques doujin" do
    visit _films_asiatiques_doujin_url(@_films_asiatiques_doujin)
    click_on "Edit this films asiatiques doujin", match: :first

    fill_in "Name", with: @_films_asiatiques_doujin.name
    click_on "Update Films asiatiques doujin"

    assert_text "Films asiatiques doujin was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques doujin" do
    visit _films_asiatiques_doujin_url(@_films_asiatiques_doujin)
    click_on "Destroy this films asiatiques doujin", match: :first

    assert_text "Films asiatiques doujin was successfully destroyed"
  end
end
