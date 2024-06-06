require "application_system_test_case"

class PersonnalitesSexesTest < ApplicationSystemTestCase
  setup do
    @_personnalites_sex = _personnalites_sexes(:one)
  end

  test "visiting the index" do
    visit _personnalites_sexes_url
    assert_selector "h1", text: "Personnalites sexes"
  end

  test "should create personnalites sexe" do
    visit _personnalites_sexes_url
    click_on "New personnalites sexe"

    fill_in "Name", with: @_personnalites_sex.name
    click_on "Create Personnalites sexe"

    assert_text "Personnalites sexe was successfully created"
    click_on "Back"
  end

  test "should update Personnalites sexe" do
    visit _personnalites_sex_url(@_personnalites_sex)
    click_on "Edit this personnalites sexe", match: :first

    fill_in "Name", with: @_personnalites_sex.name
    click_on "Update Personnalites sexe"

    assert_text "Personnalites sexe was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnalites sexe" do
    visit _personnalites_sex_url(@_personnalites_sex)
    click_on "Destroy this personnalites sexe", match: :first

    assert_text "Personnalites sexe was successfully destroyed"
  end
end
