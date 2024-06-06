require "application_system_test_case"

class NumeroDemissionTvsPeopleTest < ApplicationSystemTestCase
  setup do
    @_numero_demission_tvs_person = _numero_demission_tvs_people(:one)
  end

  test "visiting the index" do
    visit _numero_demission_tvs_people_url
    assert_selector "h1", text: "Numero demission tvs people"
  end

  test "should create numero demission tvs person" do
    visit _numero_demission_tvs_people_url
    click_on "New numero demission tvs person"

    fill_in "Name", with: @_numero_demission_tvs_person.name
    click_on "Create Numero demission tvs person"

    assert_text "Numero demission tvs person was successfully created"
    click_on "Back"
  end

  test "should update Numero demission tvs person" do
    visit _numero_demission_tvs_person_url(@_numero_demission_tvs_person)
    click_on "Edit this numero demission tvs person", match: :first

    fill_in "Name", with: @_numero_demission_tvs_person.name
    click_on "Update Numero demission tvs person"

    assert_text "Numero demission tvs person was successfully updated"
    click_on "Back"
  end

  test "should destroy Numero demission tvs person" do
    visit _numero_demission_tvs_person_url(@_numero_demission_tvs_person)
    click_on "Destroy this numero demission tvs person", match: :first

    assert_text "Numero demission tvs person was successfully destroyed"
  end
end
