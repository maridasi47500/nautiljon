require "application_system_test_case"

class AnimesFormatsTest < ApplicationSystemTestCase
  setup do
    @animes_format = animes_formats(:one)
  end

  test "visiting the index" do
    visit animes_formats_url
    assert_selector "h1", text: "Animes formats"
  end

  test "should create animes format" do
    visit animes_formats_url
    click_on "New animes format"

    fill_in "Name", with: @animes_format.name
    click_on "Create Animes format"

    assert_text "Animes format was successfully created"
    click_on "Back"
  end

  test "should update Animes format" do
    visit animes_format_url(@animes_format)
    click_on "Edit this animes format", match: :first

    fill_in "Name", with: @animes_format.name
    click_on "Update Animes format"

    assert_text "Animes format was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes format" do
    visit animes_format_url(@animes_format)
    click_on "Destroy this animes format", match: :first

    assert_text "Animes format was successfully destroyed"
  end
end
