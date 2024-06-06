require "application_system_test_case"

class PersonnageDanimesSexesTest < ApplicationSystemTestCase
  setup do
    @_personnage_danimes_sex = _personnage_danimes_sexes(:one)
  end

  test "visiting the index" do
    visit _personnage_danimes_sexes_url
    assert_selector "h1", text: "Personnage danimes sexes"
  end

  test "should create personnage danimes sexe" do
    visit _personnage_danimes_sexes_url
    click_on "New personnage danimes sexe"

    fill_in "Name", with: @_personnage_danimes_sex.name
    click_on "Create Personnage danimes sexe"

    assert_text "Personnage danimes sexe was successfully created"
    click_on "Back"
  end

  test "should update Personnage danimes sexe" do
    visit _personnage_danimes_sex_url(@_personnage_danimes_sex)
    click_on "Edit this personnage danimes sexe", match: :first

    fill_in "Name", with: @_personnage_danimes_sex.name
    click_on "Update Personnage danimes sexe"

    assert_text "Personnage danimes sexe was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnage danimes sexe" do
    visit _personnage_danimes_sex_url(@_personnage_danimes_sex)
    click_on "Destroy this personnage danimes sexe", match: :first

    assert_text "Personnage danimes sexe was successfully destroyed"
  end
end
