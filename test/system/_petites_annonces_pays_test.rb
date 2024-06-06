require "application_system_test_case"

class PetitesAnnoncesPaysTest < ApplicationSystemTestCase
  setup do
    @_petites_annonces_pay = _petites_annonces_pays(:one)
  end

  test "visiting the index" do
    visit _petites_annonces_pays_url
    assert_selector "h1", text: "Petites annonces pays"
  end

  test "should create petites annonces pay" do
    visit _petites_annonces_pays_url
    click_on "New petites annonces pay"

    fill_in "Name", with: @_petites_annonces_pay.name
    click_on "Create Petites annonces pay"

    assert_text "Petites annonces pay was successfully created"
    click_on "Back"
  end

  test "should update Petites annonces pay" do
    visit _petites_annonces_pay_url(@_petites_annonces_pay)
    click_on "Edit this petites annonces pay", match: :first

    fill_in "Name", with: @_petites_annonces_pay.name
    click_on "Update Petites annonces pay"

    assert_text "Petites annonces pay was successfully updated"
    click_on "Back"
  end

  test "should destroy Petites annonces pay" do
    visit _petites_annonces_pay_url(@_petites_annonces_pay)
    click_on "Destroy this petites annonces pay", match: :first

    assert_text "Petites annonces pay was successfully destroyed"
  end
end
