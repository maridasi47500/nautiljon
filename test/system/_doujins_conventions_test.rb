require "application_system_test_case"

class DoujinsConventionsTest < ApplicationSystemTestCase
  setup do
    @_doujins_convention = _doujins_conventions(:one)
  end

  test "visiting the index" do
    visit _doujins_conventions_url
    assert_selector "h1", text: "Doujins conventions"
  end

  test "should create doujins convention" do
    visit _doujins_conventions_url
    click_on "New doujins convention"

    fill_in "Name", with: @_doujins_convention.name
    click_on "Create Doujins convention"

    assert_text "Doujins convention was successfully created"
    click_on "Back"
  end

  test "should update Doujins convention" do
    visit _doujins_convention_url(@_doujins_convention)
    click_on "Edit this doujins convention", match: :first

    fill_in "Name", with: @_doujins_convention.name
    click_on "Update Doujins convention"

    assert_text "Doujins convention was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujins convention" do
    visit _doujins_convention_url(@_doujins_convention)
    click_on "Destroy this doujins convention", match: :first

    assert_text "Doujins convention was successfully destroyed"
  end
end
