require "application_system_test_case"

class AnimesDvdsTest < ApplicationSystemTestCase
  setup do
    @animes_dvd = animes_dvds(:one)
  end

  test "visiting the index" do
    visit animes_dvds_url
    assert_selector "h1", text: "Animes dvds"
  end

  test "should create animes dvd" do
    visit animes_dvds_url
    click_on "New animes dvd"

    fill_in "Name", with: @animes_dvd.name
    click_on "Create Animes dvd"

    assert_text "Animes dvd was successfully created"
    click_on "Back"
  end

  test "should update Animes dvd" do
    visit animes_dvd_url(@animes_dvd)
    click_on "Edit this animes dvd", match: :first

    fill_in "Name", with: @animes_dvd.name
    click_on "Update Animes dvd"

    assert_text "Animes dvd was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes dvd" do
    visit animes_dvd_url(@animes_dvd)
    click_on "Destroy this animes dvd", match: :first

    assert_text "Animes dvd was successfully destroyed"
  end
end
