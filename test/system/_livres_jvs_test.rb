require "application_system_test_case"

class LivresJvsTest < ApplicationSystemTestCase
  setup do
    @_livres_jv = _livres_jvs(:one)
  end

  test "visiting the index" do
    visit _livres_jvs_url
    assert_selector "h1", text: "Livres jvs"
  end

  test "should create livres jv" do
    visit _livres_jvs_url
    click_on "New livres jv"

    fill_in "Name", with: @_livres_jv.name
    click_on "Create Livres jv"

    assert_text "Livres jv was successfully created"
    click_on "Back"
  end

  test "should update Livres jv" do
    visit _livres_jv_url(@_livres_jv)
    click_on "Edit this livres jv", match: :first

    fill_in "Name", with: @_livres_jv.name
    click_on "Update Livres jv"

    assert_text "Livres jv was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres jv" do
    visit _livres_jv_url(@_livres_jv)
    click_on "Destroy this livres jv", match: :first

    assert_text "Livres jv was successfully destroyed"
  end
end
