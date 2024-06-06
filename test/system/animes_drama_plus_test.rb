require "application_system_test_case"

class AnimesDramaPlusTest < ApplicationSystemTestCase
  setup do
    @animes_drama_plu = animes_drama_plus(:one)
  end

  test "visiting the index" do
    visit animes_drama_plus_url
    assert_selector "h1", text: "Animes drama plus"
  end

  test "should create animes drama plu" do
    visit animes_drama_plus_url
    click_on "New animes drama plu"

    fill_in "Name", with: @animes_drama_plu.name
    click_on "Create Animes drama plu"

    assert_text "Animes drama plu was successfully created"
    click_on "Back"
  end

  test "should update Animes drama plu" do
    visit animes_drama_plu_url(@animes_drama_plu)
    click_on "Edit this animes drama plu", match: :first

    fill_in "Name", with: @animes_drama_plu.name
    click_on "Update Animes drama plu"

    assert_text "Animes drama plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes drama plu" do
    visit animes_drama_plu_url(@animes_drama_plu)
    click_on "Destroy this animes drama plu", match: :first

    assert_text "Animes drama plu was successfully destroyed"
  end
end
