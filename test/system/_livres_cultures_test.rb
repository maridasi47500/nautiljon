require "application_system_test_case"

class LivresCulturesTest < ApplicationSystemTestCase
  setup do
    @_livres_culture = _livres_cultures(:one)
  end

  test "visiting the index" do
    visit _livres_cultures_url
    assert_selector "h1", text: "Livres cultures"
  end

  test "should create livres culture" do
    visit _livres_cultures_url
    click_on "New livres culture"

    fill_in "Name", with: @_livres_culture.name
    click_on "Create Livres culture"

    assert_text "Livres culture was successfully created"
    click_on "Back"
  end

  test "should update Livres culture" do
    visit _livres_culture_url(@_livres_culture)
    click_on "Edit this livres culture", match: :first

    fill_in "Name", with: @_livres_culture.name
    click_on "Update Livres culture"

    assert_text "Livres culture was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres culture" do
    visit _livres_culture_url(@_livres_culture)
    click_on "Destroy this livres culture", match: :first

    assert_text "Livres culture was successfully destroyed"
  end
end
