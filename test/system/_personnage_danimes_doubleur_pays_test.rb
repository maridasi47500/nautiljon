require "application_system_test_case"

class PersonnageDanimesDoubleurPaysTest < ApplicationSystemTestCase
  setup do
    @_personnage_danimes_doubleur_pay = _personnage_danimes_doubleur_pays(:one)
  end

  test "visiting the index" do
    visit _personnage_danimes_doubleur_pays_url
    assert_selector "h1", text: "Personnage danimes doubleur pays"
  end

  test "should create personnage danimes doubleur pay" do
    visit _personnage_danimes_doubleur_pays_url
    click_on "New personnage danimes doubleur pay"

    fill_in "Name", with: @_personnage_danimes_doubleur_pay.name
    click_on "Create Personnage danimes doubleur pay"

    assert_text "Personnage danimes doubleur pay was successfully created"
    click_on "Back"
  end

  test "should update Personnage danimes doubleur pay" do
    visit _personnage_danimes_doubleur_pay_url(@_personnage_danimes_doubleur_pay)
    click_on "Edit this personnage danimes doubleur pay", match: :first

    fill_in "Name", with: @_personnage_danimes_doubleur_pay.name
    click_on "Update Personnage danimes doubleur pay"

    assert_text "Personnage danimes doubleur pay was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnage danimes doubleur pay" do
    visit _personnage_danimes_doubleur_pay_url(@_personnage_danimes_doubleur_pay)
    click_on "Destroy this personnage danimes doubleur pay", match: :first

    assert_text "Personnage danimes doubleur pay was successfully destroyed"
  end
end
