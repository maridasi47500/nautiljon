require "application_system_test_case"

class PersonnalitesExFinsTest < ApplicationSystemTestCase
  setup do
    @_personnalites_ex_fin = _personnalites_ex_fins(:one)
  end

  test "visiting the index" do
    visit _personnalites_ex_fins_url
    assert_selector "h1", text: "Personnalites ex fins"
  end

  test "should create personnalites ex fin" do
    visit _personnalites_ex_fins_url
    click_on "New personnalites ex fin"

    fill_in "Name", with: @_personnalites_ex_fin.name
    click_on "Create Personnalites ex fin"

    assert_text "Personnalites ex fin was successfully created"
    click_on "Back"
  end

  test "should update Personnalites ex fin" do
    visit _personnalites_ex_fin_url(@_personnalites_ex_fin)
    click_on "Edit this personnalites ex fin", match: :first

    fill_in "Name", with: @_personnalites_ex_fin.name
    click_on "Update Personnalites ex fin"

    assert_text "Personnalites ex fin was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnalites ex fin" do
    visit _personnalites_ex_fin_url(@_personnalites_ex_fin)
    click_on "Destroy this personnalites ex fin", match: :first

    assert_text "Personnalites ex fin was successfully destroyed"
  end
end
