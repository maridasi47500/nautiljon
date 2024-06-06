require "application_system_test_case"

class AnimesDramasTest < ApplicationSystemTestCase
  setup do
    @animes_drama = animes_dramas(:one)
  end

  test "visiting the index" do
    visit animes_dramas_url
    assert_selector "h1", text: "Animes dramas"
  end

  test "should create animes drama" do
    visit animes_dramas_url
    click_on "New animes drama"

    fill_in "Name", with: @animes_drama.name
    click_on "Create Animes drama"

    assert_text "Animes drama was successfully created"
    click_on "Back"
  end

  test "should update Animes drama" do
    visit animes_drama_url(@animes_drama)
    click_on "Edit this animes drama", match: :first

    fill_in "Name", with: @animes_drama.name
    click_on "Update Animes drama"

    assert_text "Animes drama was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes drama" do
    visit animes_drama_url(@animes_drama)
    click_on "Destroy this animes drama", match: :first

    assert_text "Animes drama was successfully destroyed"
  end
end
