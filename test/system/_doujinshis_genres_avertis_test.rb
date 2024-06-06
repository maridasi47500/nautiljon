require "application_system_test_case"

class DoujinshisGenresAvertisTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_genres_averti = _doujinshis_genres_avertis(:one)
  end

  test "visiting the index" do
    visit _doujinshis_genres_avertis_url
    assert_selector "h1", text: "Doujinshis genres avertis"
  end

  test "should create doujinshis genres averti" do
    visit _doujinshis_genres_avertis_url
    click_on "New doujinshis genres averti"

    fill_in "Name", with: @_doujinshis_genres_averti.name
    click_on "Create Doujinshis genres averti"

    assert_text "Doujinshis genres averti was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis genres averti" do
    visit _doujinshis_genres_averti_url(@_doujinshis_genres_averti)
    click_on "Edit this doujinshis genres averti", match: :first

    fill_in "Name", with: @_doujinshis_genres_averti.name
    click_on "Update Doujinshis genres averti"

    assert_text "Doujinshis genres averti was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis genres averti" do
    visit _doujinshis_genres_averti_url(@_doujinshis_genres_averti)
    click_on "Destroy this doujinshis genres averti", match: :first

    assert_text "Doujinshis genres averti was successfully destroyed"
  end
end
