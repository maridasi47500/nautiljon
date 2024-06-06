require "application_system_test_case"

class GoodiesGroupesTest < ApplicationSystemTestCase
  setup do
    @_goodies_groupe = _goodies_groupes(:one)
  end

  test "visiting the index" do
    visit _goodies_groupes_url
    assert_selector "h1", text: "Goodies groupes"
  end

  test "should create goodies groupe" do
    visit _goodies_groupes_url
    click_on "New goodies groupe"

    fill_in "Name", with: @_goodies_groupe.name
    click_on "Create Goodies groupe"

    assert_text "Goodies groupe was successfully created"
    click_on "Back"
  end

  test "should update Goodies groupe" do
    visit _goodies_groupe_url(@_goodies_groupe)
    click_on "Edit this goodies groupe", match: :first

    fill_in "Name", with: @_goodies_groupe.name
    click_on "Update Goodies groupe"

    assert_text "Goodies groupe was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies groupe" do
    visit _goodies_groupe_url(@_goodies_groupe)
    click_on "Destroy this goodies groupe", match: :first

    assert_text "Goodies groupe was successfully destroyed"
  end
end
