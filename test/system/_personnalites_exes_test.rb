require "application_system_test_case"

class PersonnalitesexesTest < ApplicationSystemTestCase
  setup do
    @_personnalites_ex = _personnalites_exes(:one)
  end

  test "visiting the index" do
    visit _personnalites_exes_url
    assert_selector "h1", text: "Personnalites exes"
  end

  test "should create personnalites ex" do
    visit _personnalites_exes_url
    click_on "New personnalites ex"

    fill_in "Name", with: @_personnalites_ex.name
    click_on "Create Personnalites ex"

    assert_text "Personnalites ex was successfully created"
    click_on "Back"
  end

  test "should update Personnalites ex" do
    visit _personnalites_ex_url(@_personnalites_ex)
    click_on "Edit this personnalites ex", match: :first

    fill_in "Name", with: @_personnalites_ex.name
    click_on "Update Personnalites ex"

    assert_text "Personnalites ex was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnalites ex" do
    visit _personnalites_ex_url(@_personnalites_ex)
    click_on "Destroy this personnalites ex", match: :first

    assert_text "Personnalites ex was successfully destroyed"
  end
end
