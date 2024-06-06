require "application_system_test_case"

class AnimesMangasTest < ApplicationSystemTestCase
  setup do
    @animes_manga = animes_mangas(:one)
  end

  test "visiting the index" do
    visit animes_mangas_url
    assert_selector "h1", text: "Animes mangas"
  end

  test "should create animes manga" do
    visit animes_mangas_url
    click_on "New animes manga"

    fill_in "Name", with: @animes_manga.name
    click_on "Create Animes manga"

    assert_text "Animes manga was successfully created"
    click_on "Back"
  end

  test "should update Animes manga" do
    visit animes_manga_url(@animes_manga)
    click_on "Edit this animes manga", match: :first

    fill_in "Name", with: @animes_manga.name
    click_on "Update Animes manga"

    assert_text "Animes manga was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes manga" do
    visit animes_manga_url(@animes_manga)
    click_on "Destroy this animes manga", match: :first

    assert_text "Animes manga was successfully destroyed"
  end
end
