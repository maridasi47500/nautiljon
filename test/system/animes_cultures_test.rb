require "application_system_test_case"

class AnimesCulturesTest < ApplicationSystemTestCase
  setup do
    @animes_culture = animes_cultures(:one)
  end

  test "visiting the index" do
    visit animes_cultures_url
    assert_selector "h1", text: "Animes cultures"
  end

  test "should create animes culture" do
    visit animes_cultures_url
    click_on "New animes culture"

    fill_in "Name", with: @animes_culture.name
    click_on "Create Animes culture"

    assert_text "Animes culture was successfully created"
    click_on "Back"
  end

  test "should update Animes culture" do
    visit animes_culture_url(@animes_culture)
    click_on "Edit this animes culture", match: :first

    fill_in "Name", with: @animes_culture.name
    click_on "Update Animes culture"

    assert_text "Animes culture was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes culture" do
    visit animes_culture_url(@animes_culture)
    click_on "Destroy this animes culture", match: :first

    assert_text "Animes culture was successfully destroyed"
  end
end
