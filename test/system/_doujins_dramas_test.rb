require "application_system_test_case"

class DoujinsDramasTest < ApplicationSystemTestCase
  setup do
    @_doujins_drama = _doujins_dramas(:one)
  end

  test "visiting the index" do
    visit _doujins_dramas_url
    assert_selector "h1", text: "Doujins dramas"
  end

  test "should create doujins drama" do
    visit _doujins_dramas_url
    click_on "New doujins drama"

    fill_in "Name", with: @_doujins_drama.name
    click_on "Create Doujins drama"

    assert_text "Doujins drama was successfully created"
    click_on "Back"
  end

  test "should update Doujins drama" do
    visit _doujins_drama_url(@_doujins_drama)
    click_on "Edit this doujins drama", match: :first

    fill_in "Name", with: @_doujins_drama.name
    click_on "Update Doujins drama"

    assert_text "Doujins drama was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujins drama" do
    visit _doujins_drama_url(@_doujins_drama)
    click_on "Destroy this doujins drama", match: :first

    assert_text "Doujins drama was successfully destroyed"
  end
end
