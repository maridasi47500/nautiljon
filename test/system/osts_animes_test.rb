require "application_system_test_case"

class OstsAnimesTest < ApplicationSystemTestCase
  setup do
    @osts_anime = osts_animes(:one)
  end

  test "visiting the index" do
    visit osts_animes_url
    assert_selector "h1", text: "Osts animes"
  end

  test "should create osts anime" do
    visit osts_animes_url
    click_on "New osts anime"

    fill_in "Name", with: @osts_anime.name
    click_on "Create Osts anime"

    assert_text "Osts anime was successfully created"
    click_on "Back"
  end

  test "should update Osts anime" do
    visit osts_anime_url(@osts_anime)
    click_on "Edit this osts anime", match: :first

    fill_in "Name", with: @osts_anime.name
    click_on "Update Osts anime"

    assert_text "Osts anime was successfully updated"
    click_on "Back"
  end

  test "should destroy Osts anime" do
    visit osts_anime_url(@osts_anime)
    click_on "Destroy this osts anime", match: :first

    assert_text "Osts anime was successfully destroyed"
  end
end
