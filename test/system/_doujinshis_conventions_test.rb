require "application_system_test_case"

class DoujinshisConventionsTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_convention = _doujinshis_conventions(:one)
  end

  test "visiting the index" do
    visit _doujinshis_conventions_url
    assert_selector "h1", text: "Doujinshis conventions"
  end

  test "should create doujinshis convention" do
    visit _doujinshis_conventions_url
    click_on "New doujinshis convention"

    fill_in "Name", with: @_doujinshis_convention.name
    click_on "Create Doujinshis convention"

    assert_text "Doujinshis convention was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis convention" do
    visit _doujinshis_convention_url(@_doujinshis_convention)
    click_on "Edit this doujinshis convention", match: :first

    fill_in "Name", with: @_doujinshis_convention.name
    click_on "Update Doujinshis convention"

    assert_text "Doujinshis convention was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis convention" do
    visit _doujinshis_convention_url(@_doujinshis_convention)
    click_on "Destroy this doujinshis convention", match: :first

    assert_text "Doujinshis convention was successfully destroyed"
  end
end
