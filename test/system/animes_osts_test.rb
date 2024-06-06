require "application_system_test_case"

class AnimesOstsTest < ApplicationSystemTestCase
  setup do
    @animes_ost = animes_osts(:one)
  end

  test "visiting the index" do
    visit animes_osts_url
    assert_selector "h1", text: "Animes osts"
  end

  test "should create animes ost" do
    visit animes_osts_url
    click_on "New animes ost"

    fill_in "Name", with: @animes_ost.name
    click_on "Create Animes ost"

    assert_text "Animes ost was successfully created"
    click_on "Back"
  end

  test "should update Animes ost" do
    visit animes_ost_url(@animes_ost)
    click_on "Edit this animes ost", match: :first

    fill_in "Name", with: @animes_ost.name
    click_on "Update Animes ost"

    assert_text "Animes ost was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes ost" do
    visit animes_ost_url(@animes_ost)
    click_on "Destroy this animes ost", match: :first

    assert_text "Animes ost was successfully destroyed"
  end
end
