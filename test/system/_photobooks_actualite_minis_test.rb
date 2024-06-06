require "application_system_test_case"

class PhotobooksActualiteMinisTest < ApplicationSystemTestCase
  setup do
    @_photobooks_actualite_mini = _photobooks_actualite_minis(:one)
  end

  test "visiting the index" do
    visit _photobooks_actualite_minis_url
    assert_selector "h1", text: "Photobooks actualite minis"
  end

  test "should create photobooks actualite mini" do
    visit _photobooks_actualite_minis_url
    click_on "New photobooks actualite mini"

    fill_in "Name", with: @_photobooks_actualite_mini.name
    click_on "Create Photobooks actualite mini"

    assert_text "Photobooks actualite mini was successfully created"
    click_on "Back"
  end

  test "should update Photobooks actualite mini" do
    visit _photobooks_actualite_mini_url(@_photobooks_actualite_mini)
    click_on "Edit this photobooks actualite mini", match: :first

    fill_in "Name", with: @_photobooks_actualite_mini.name
    click_on "Update Photobooks actualite mini"

    assert_text "Photobooks actualite mini was successfully updated"
    click_on "Back"
  end

  test "should destroy Photobooks actualite mini" do
    visit _photobooks_actualite_mini_url(@_photobooks_actualite_mini)
    click_on "Destroy this photobooks actualite mini", match: :first

    assert_text "Photobooks actualite mini was successfully destroyed"
  end
end
