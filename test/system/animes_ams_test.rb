require "application_system_test_case"

class AnimesAmsTest < ApplicationSystemTestCase
  setup do
    @animes_am = animes_ams(:one)
  end

  test "visiting the index" do
    visit animes_ams_url
    assert_selector "h1", text: "Animes ams"
  end

  test "should create animes am" do
    visit animes_ams_url
    click_on "New animes am"

    fill_in "Name", with: @animes_am.name
    click_on "Create Animes am"

    assert_text "Animes am was successfully created"
    click_on "Back"
  end

  test "should update Animes am" do
    visit animes_am_url(@animes_am)
    click_on "Edit this animes am", match: :first

    fill_in "Name", with: @animes_am.name
    click_on "Update Animes am"

    assert_text "Animes am was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes am" do
    visit animes_am_url(@animes_am)
    click_on "Destroy this animes am", match: :first

    assert_text "Animes am was successfully destroyed"
  end
end
