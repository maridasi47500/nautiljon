require "application_system_test_case"

class CdsAnimesTest < ApplicationSystemTestCase
  setup do
    @_cds_anime = _cds_animes(:one)
  end

  test "visiting the index" do
    visit _cds_animes_url
    assert_selector "h1", text: "Cds animes"
  end

  test "should create cds anime" do
    visit _cds_animes_url
    click_on "New cds anime"

    fill_in "Name", with: @_cds_anime.name
    click_on "Create Cds anime"

    assert_text "Cds anime was successfully created"
    click_on "Back"
  end

  test "should update Cds anime" do
    visit _cds_anime_url(@_cds_anime)
    click_on "Edit this cds anime", match: :first

    fill_in "Name", with: @_cds_anime.name
    click_on "Update Cds anime"

    assert_text "Cds anime was successfully updated"
    click_on "Back"
  end

  test "should destroy Cds anime" do
    visit _cds_anime_url(@_cds_anime)
    click_on "Destroy this cds anime", match: :first

    assert_text "Cds anime was successfully destroyed"
  end
end
