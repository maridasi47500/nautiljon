require "application_system_test_case"

class BoutiquesTest < ApplicationSystemTestCase
  setup do
    @_boutique = _boutiques(:one)
  end

  test "visiting the index" do
    visit _boutiques_url
    assert_selector "h1", text: "Boutiques"
  end

  test "should create boutique" do
    visit _boutiques_url
    click_on "New boutique"

    fill_in "Boutiques pays", with: @_boutique._boutiques_pays_id
    fill_in "Acceptregles", with: @_boutique.acceptregles
    fill_in "Adresse", with: @_boutique.adresse
    fill_in "Dept", with: @_boutique.dept
    fill_in "Description", with: @_boutique.description
    fill_in "Image", with: @_boutique.image
    fill_in "Nom", with: @_boutique.nom
    fill_in "Site", with: @_boutique.site
    fill_in "Tel", with: @_boutique.tel
    fill_in "Ville", with: @_boutique.ville
    click_on "Create Boutique"

    assert_text "Boutique was successfully created"
    click_on "Back"
  end

  test "should update Boutique" do
    visit _boutique_url(@_boutique)
    click_on "Edit this boutique", match: :first

    fill_in "Boutiques pays", with: @_boutique._boutiques_pays_id
    fill_in "Acceptregles", with: @_boutique.acceptregles
    fill_in "Adresse", with: @_boutique.adresse
    fill_in "Dept", with: @_boutique.dept
    fill_in "Description", with: @_boutique.description
    fill_in "Image", with: @_boutique.image
    fill_in "Nom", with: @_boutique.nom
    fill_in "Site", with: @_boutique.site
    fill_in "Tel", with: @_boutique.tel
    fill_in "Ville", with: @_boutique.ville
    click_on "Update Boutique"

    assert_text "Boutique was successfully updated"
    click_on "Back"
  end

  test "should destroy Boutique" do
    visit _boutique_url(@_boutique)
    click_on "Destroy this boutique", match: :first

    assert_text "Boutique was successfully destroyed"
  end
end
