require "application_system_test_case"

class PersonnalitesPeoplePlusTest < ApplicationSystemTestCase
  setup do
    @_personnalites_people_plu = _personnalites_people_plus(:one)
  end

  test "visiting the index" do
    visit _personnalites_people_plus_url
    assert_selector "h1", text: "Personnalites people plus"
  end

  test "should create personnalites people plu" do
    visit _personnalites_people_plus_url
    click_on "New personnalites people plu"

    fill_in "Name", with: @_personnalites_people_plu.name
    click_on "Create Personnalites people plu"

    assert_text "Personnalites people plu was successfully created"
    click_on "Back"
  end

  test "should update Personnalites people plu" do
    visit _personnalites_people_plu_url(@_personnalites_people_plu)
    click_on "Edit this personnalites people plu", match: :first

    fill_in "Name", with: @_personnalites_people_plu.name
    click_on "Update Personnalites people plu"

    assert_text "Personnalites people plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnalites people plu" do
    visit _personnalites_people_plu_url(@_personnalites_people_plu)
    click_on "Destroy this personnalites people plu", match: :first

    assert_text "Personnalites people plu was successfully destroyed"
  end
end
