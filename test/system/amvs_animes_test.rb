require "application_system_test_case"

class AmvsAnimesTest < ApplicationSystemTestCase
  setup do
    @amvs_anime = amvs_animes(:one)
  end

  test "visiting the index" do
    visit amvs_animes_url
    assert_selector "h1", text: "Amvs animes"
  end

  test "should create amvs anime" do
    visit amvs_animes_url
    click_on "New amvs anime"

    fill_in "Name", with: @amvs_anime.name
    click_on "Create Amvs anime"

    assert_text "Amvs anime was successfully created"
    click_on "Back"
  end

  test "should update Amvs anime" do
    visit amvs_anime_url(@amvs_anime)
    click_on "Edit this amvs anime", match: :first

    fill_in "Name", with: @amvs_anime.name
    click_on "Update Amvs anime"

    assert_text "Amvs anime was successfully updated"
    click_on "Back"
  end

  test "should destroy Amvs anime" do
    visit amvs_anime_url(@amvs_anime)
    click_on "Destroy this amvs anime", match: :first

    assert_text "Amvs anime was successfully destroyed"
  end
end
