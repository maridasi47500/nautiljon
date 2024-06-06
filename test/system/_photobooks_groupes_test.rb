require "application_system_test_case"

class PhotobooksGroupesTest < ApplicationSystemTestCase
  setup do
    @_photobooks_groupe = _photobooks_groupes(:one)
  end

  test "visiting the index" do
    visit _photobooks_groupes_url
    assert_selector "h1", text: "Photobooks groupes"
  end

  test "should create photobooks groupe" do
    visit _photobooks_groupes_url
    click_on "New photobooks groupe"

    fill_in "Name", with: @_photobooks_groupe.name
    click_on "Create Photobooks groupe"

    assert_text "Photobooks groupe was successfully created"
    click_on "Back"
  end

  test "should update Photobooks groupe" do
    visit _photobooks_groupe_url(@_photobooks_groupe)
    click_on "Edit this photobooks groupe", match: :first

    fill_in "Name", with: @_photobooks_groupe.name
    click_on "Update Photobooks groupe"

    assert_text "Photobooks groupe was successfully updated"
    click_on "Back"
  end

  test "should destroy Photobooks groupe" do
    visit _photobooks_groupe_url(@_photobooks_groupe)
    click_on "Destroy this photobooks groupe", match: :first

    assert_text "Photobooks groupe was successfully destroyed"
  end
end
