require "application_system_test_case"

class AnimesPhotobooksTest < ApplicationSystemTestCase
  setup do
    @animes_photobook = animes_photobooks(:one)
  end

  test "visiting the index" do
    visit animes_photobooks_url
    assert_selector "h1", text: "Animes photobooks"
  end

  test "should create animes photobook" do
    visit animes_photobooks_url
    click_on "New animes photobook"

    fill_in "Name", with: @animes_photobook.name
    click_on "Create Animes photobook"

    assert_text "Animes photobook was successfully created"
    click_on "Back"
  end

  test "should update Animes photobook" do
    visit animes_photobook_url(@animes_photobook)
    click_on "Edit this animes photobook", match: :first

    fill_in "Name", with: @animes_photobook.name
    click_on "Update Animes photobook"

    assert_text "Animes photobook was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes photobook" do
    visit animes_photobook_url(@animes_photobook)
    click_on "Destroy this animes photobook", match: :first

    assert_text "Animes photobook was successfully destroyed"
  end
end
