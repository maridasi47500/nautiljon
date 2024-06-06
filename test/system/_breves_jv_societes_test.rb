require "application_system_test_case"

class BrevesJvSocietesTest < ApplicationSystemTestCase
  setup do
    @_breves_jv_societe = _breves_jv_societes(:one)
  end

  test "visiting the index" do
    visit _breves_jv_societes_url
    assert_selector "h1", text: "Breves jv societes"
  end

  test "should create breves jv societe" do
    visit _breves_jv_societes_url
    click_on "New breves jv societe"

    fill_in "Name", with: @_breves_jv_societe.name
    click_on "Create Breves jv societe"

    assert_text "Breves jv societe was successfully created"
    click_on "Back"
  end

  test "should update Breves jv societe" do
    visit _breves_jv_societe_url(@_breves_jv_societe)
    click_on "Edit this breves jv societe", match: :first

    fill_in "Name", with: @_breves_jv_societe.name
    click_on "Update Breves jv societe"

    assert_text "Breves jv societe was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves jv societe" do
    visit _breves_jv_societe_url(@_breves_jv_societe)
    click_on "Destroy this breves jv societe", match: :first

    assert_text "Breves jv societe was successfully destroyed"
  end
end
