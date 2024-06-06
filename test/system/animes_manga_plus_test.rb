require "application_system_test_case"

class AnimesMangaPlusTest < ApplicationSystemTestCase
  setup do
    @animes_manga_plu = animes_manga_plus(:one)
  end

  test "visiting the index" do
    visit animes_manga_plus_url
    assert_selector "h1", text: "Animes manga plus"
  end

  test "should create animes manga plu" do
    visit animes_manga_plus_url
    click_on "New animes manga plu"

    fill_in "Name", with: @animes_manga_plu.name
    click_on "Create Animes manga plu"

    assert_text "Animes manga plu was successfully created"
    click_on "Back"
  end

  test "should update Animes manga plu" do
    visit animes_manga_plu_url(@animes_manga_plu)
    click_on "Edit this animes manga plu", match: :first

    fill_in "Name", with: @animes_manga_plu.name
    click_on "Update Animes manga plu"

    assert_text "Animes manga plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes manga plu" do
    visit animes_manga_plu_url(@animes_manga_plu)
    click_on "Destroy this animes manga plu", match: :first

    assert_text "Animes manga plu was successfully destroyed"
  end
end
