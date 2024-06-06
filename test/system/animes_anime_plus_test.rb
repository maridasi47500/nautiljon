require "application_system_test_case"

class AnimesAnimePlusTest < ApplicationSystemTestCase
  setup do
    @animes_anime_plu = animes_anime_plus(:one)
  end

  test "visiting the index" do
    visit animes_anime_plus_url
    assert_selector "h1", text: "Animes anime plus"
  end

  test "should create animes anime plu" do
    visit animes_anime_plus_url
    click_on "New animes anime plu"

    fill_in "Name", with: @animes_anime_plu.name
    click_on "Create Animes anime plu"

    assert_text "Animes anime plu was successfully created"
    click_on "Back"
  end

  test "should update Animes anime plu" do
    visit animes_anime_plu_url(@animes_anime_plu)
    click_on "Edit this animes anime plu", match: :first

    fill_in "Name", with: @animes_anime_plu.name
    click_on "Update Animes anime plu"

    assert_text "Animes anime plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes anime plu" do
    visit animes_anime_plu_url(@animes_anime_plu)
    click_on "Destroy this animes anime plu", match: :first

    assert_text "Animes anime plu was successfully destroyed"
  end
end
