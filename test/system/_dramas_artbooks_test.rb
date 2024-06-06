require "application_system_test_case"

class DramasArtbooksTest < ApplicationSystemTestCase
  setup do
    @_dramas_artbook = _dramas_artbooks(:one)
  end

  test "visiting the index" do
    visit _dramas_artbooks_url
    assert_selector "h1", text: "Dramas artbooks"
  end

  test "should create dramas artbook" do
    visit _dramas_artbooks_url
    click_on "New dramas artbook"

    fill_in "Name", with: @_dramas_artbook.name
    click_on "Create Dramas artbook"

    assert_text "Dramas artbook was successfully created"
    click_on "Back"
  end

  test "should update Dramas artbook" do
    visit _dramas_artbook_url(@_dramas_artbook)
    click_on "Edit this dramas artbook", match: :first

    fill_in "Name", with: @_dramas_artbook.name
    click_on "Update Dramas artbook"

    assert_text "Dramas artbook was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas artbook" do
    visit _dramas_artbook_url(@_dramas_artbook)
    click_on "Destroy this dramas artbook", match: :first

    assert_text "Dramas artbook was successfully destroyed"
  end
end
