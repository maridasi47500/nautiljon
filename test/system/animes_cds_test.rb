require "application_system_test_case"

class AnimesCdsTest < ApplicationSystemTestCase
  setup do
    @animes_cd = animes_cds(:one)
  end

  test "visiting the index" do
    visit animes_cds_url
    assert_selector "h1", text: "Animes cds"
  end

  test "should create animes cd" do
    visit animes_cds_url
    click_on "New animes cd"

    fill_in "Name", with: @animes_cd.name
    click_on "Create Animes cd"

    assert_text "Animes cd was successfully created"
    click_on "Back"
  end

  test "should update Animes cd" do
    visit animes_cd_url(@animes_cd)
    click_on "Edit this animes cd", match: :first

    fill_in "Name", with: @animes_cd.name
    click_on "Update Animes cd"

    assert_text "Animes cd was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes cd" do
    visit animes_cd_url(@animes_cd)
    click_on "Destroy this animes cd", match: :first

    assert_text "Animes cd was successfully destroyed"
  end
end
