require "application_system_test_case"

class AnimesAnimesTest < ApplicationSystemTestCase
  setup do
    @animes_anime = animes_animes(:one)
  end

  test "visiting the index" do
    visit animes_animes_url
    assert_selector "h1", text: "Animes animes"
  end

  test "should create animes anime" do
    visit animes_animes_url
    click_on "New animes anime"

    fill_in "Name", with: @animes_anime.name
    click_on "Create Animes anime"

    assert_text "Animes anime was successfully created"
    click_on "Back"
  end

  test "should update Animes anime" do
    visit animes_anime_url(@animes_anime)
    click_on "Edit this animes anime", match: :first

    fill_in "Name", with: @animes_anime.name
    click_on "Update Animes anime"

    assert_text "Animes anime was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes anime" do
    visit animes_anime_url(@animes_anime)
    click_on "Destroy this animes anime", match: :first

    assert_text "Animes anime was successfully destroyed"
  end
end
