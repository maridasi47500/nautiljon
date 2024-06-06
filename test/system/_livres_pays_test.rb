require "application_system_test_case"

class LivresPaysTest < ApplicationSystemTestCase
  setup do
    @_livres_pay = _livres_pays(:one)
  end

  test "visiting the index" do
    visit _livres_pays_url
    assert_selector "h1", text: "Livres pays"
  end

  test "should create livres pay" do
    visit _livres_pays_url
    click_on "New livres pay"

    fill_in "Name", with: @_livres_pay.name
    click_on "Create Livres pay"

    assert_text "Livres pay was successfully created"
    click_on "Back"
  end

  test "should update Livres pay" do
    visit _livres_pay_url(@_livres_pay)
    click_on "Edit this livres pay", match: :first

    fill_in "Name", with: @_livres_pay.name
    click_on "Update Livres pay"

    assert_text "Livres pay was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres pay" do
    visit _livres_pay_url(@_livres_pay)
    click_on "Destroy this livres pay", match: :first

    assert_text "Livres pay was successfully destroyed"
  end
end
