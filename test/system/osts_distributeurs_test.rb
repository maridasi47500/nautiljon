require "application_system_test_case"

class OstsDistributeursTest < ApplicationSystemTestCase
  setup do
    @osts_distributeur = osts_distributeurs(:one)
  end

  test "visiting the index" do
    visit osts_distributeurs_url
    assert_selector "h1", text: "Osts distributeurs"
  end

  test "should create osts distributeur" do
    visit osts_distributeurs_url
    click_on "New osts distributeur"

    fill_in "Name", with: @osts_distributeur.name
    click_on "Create Osts distributeur"

    assert_text "Osts distributeur was successfully created"
    click_on "Back"
  end

  test "should update Osts distributeur" do
    visit osts_distributeur_url(@osts_distributeur)
    click_on "Edit this osts distributeur", match: :first

    fill_in "Name", with: @osts_distributeur.name
    click_on "Update Osts distributeur"

    assert_text "Osts distributeur was successfully updated"
    click_on "Back"
  end

  test "should destroy Osts distributeur" do
    visit osts_distributeur_url(@osts_distributeur)
    click_on "Destroy this osts distributeur", match: :first

    assert_text "Osts distributeur was successfully destroyed"
  end
end
