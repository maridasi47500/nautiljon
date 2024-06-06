require "application_system_test_case"

class CdsDistributeursTest < ApplicationSystemTestCase
  setup do
    @_cds_distributeur = _cds_distributeurs(:one)
  end

  test "visiting the index" do
    visit _cds_distributeurs_url
    assert_selector "h1", text: "Cds distributeurs"
  end

  test "should create cds distributeur" do
    visit _cds_distributeurs_url
    click_on "New cds distributeur"

    fill_in "Name", with: @_cds_distributeur.name
    click_on "Create Cds distributeur"

    assert_text "Cds distributeur was successfully created"
    click_on "Back"
  end

  test "should update Cds distributeur" do
    visit _cds_distributeur_url(@_cds_distributeur)
    click_on "Edit this cds distributeur", match: :first

    fill_in "Name", with: @_cds_distributeur.name
    click_on "Update Cds distributeur"

    assert_text "Cds distributeur was successfully updated"
    click_on "Back"
  end

  test "should destroy Cds distributeur" do
    visit _cds_distributeur_url(@_cds_distributeur)
    click_on "Destroy this cds distributeur", match: :first

    assert_text "Cds distributeur was successfully destroyed"
  end
end
