require "application_system_test_case"

class BrevesCatsTest < ApplicationSystemTestCase
  setup do
    @_breves_cat = _breves_cats(:one)
  end

  test "visiting the index" do
    visit _breves_cats_url
    assert_selector "h1", text: "Breves cats"
  end

  test "should create breves cat" do
    visit _breves_cats_url
    click_on "New breves cat"

    fill_in "Name", with: @_breves_cat.name
    click_on "Create Breves cat"

    assert_text "Breves cat was successfully created"
    click_on "Back"
  end

  test "should update Breves cat" do
    visit _breves_cat_url(@_breves_cat)
    click_on "Edit this breves cat", match: :first

    fill_in "Name", with: @_breves_cat.name
    click_on "Update Breves cat"

    assert_text "Breves cat was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves cat" do
    visit _breves_cat_url(@_breves_cat)
    click_on "Destroy this breves cat", match: :first

    assert_text "Breves cat was successfully destroyed"
  end
end
