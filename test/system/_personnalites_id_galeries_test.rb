require "application_system_test_case"

class PersonnalitesIdGaleriesTest < ApplicationSystemTestCase
  setup do
    @_personnalites_id_galery = _personnalites_id_galeries(:one)
  end

  test "visiting the index" do
    visit _personnalites_id_galeries_url
    assert_selector "h1", text: "Personnalites id galeries"
  end

  test "should create personnalites id galerie" do
    visit _personnalites_id_galeries_url
    click_on "New personnalites id galerie"

    fill_in "Name", with: @_personnalites_id_galery.name
    click_on "Create Personnalites id galerie"

    assert_text "Personnalites id galerie was successfully created"
    click_on "Back"
  end

  test "should update Personnalites id galerie" do
    visit _personnalites_id_galery_url(@_personnalites_id_galery)
    click_on "Edit this personnalites id galerie", match: :first

    fill_in "Name", with: @_personnalites_id_galery.name
    click_on "Update Personnalites id galerie"

    assert_text "Personnalites id galerie was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnalites id galerie" do
    visit _personnalites_id_galery_url(@_personnalites_id_galery)
    click_on "Destroy this personnalites id galerie", match: :first

    assert_text "Personnalites id galerie was successfully destroyed"
  end
end
