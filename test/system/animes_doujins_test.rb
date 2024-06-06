require "application_system_test_case"

class AnimesDoujinsTest < ApplicationSystemTestCase
  setup do
    @animes_doujin = animes_doujins(:one)
  end

  test "visiting the index" do
    visit animes_doujins_url
    assert_selector "h1", text: "Animes doujins"
  end

  test "should create animes doujin" do
    visit animes_doujins_url
    click_on "New animes doujin"

    fill_in "Name", with: @animes_doujin.name
    click_on "Create Animes doujin"

    assert_text "Animes doujin was successfully created"
    click_on "Back"
  end

  test "should update Animes doujin" do
    visit animes_doujin_url(@animes_doujin)
    click_on "Edit this animes doujin", match: :first

    fill_in "Name", with: @animes_doujin.name
    click_on "Update Animes doujin"

    assert_text "Animes doujin was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes doujin" do
    visit animes_doujin_url(@animes_doujin)
    click_on "Destroy this animes doujin", match: :first

    assert_text "Animes doujin was successfully destroyed"
  end
end
