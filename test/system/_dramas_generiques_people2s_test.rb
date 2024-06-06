require "application_system_test_case"

class DramasGeneriquesPeople2sTest < ApplicationSystemTestCase
  setup do
    @_dramas_generiques_people2 = _dramas_generiques_people2s(:one)
  end

  test "visiting the index" do
    visit _dramas_generiques_people2s_url
    assert_selector "h1", text: "Dramas generiques people2s"
  end

  test "should create dramas generiques people2" do
    visit _dramas_generiques_people2s_url
    click_on "New dramas generiques people2"

    fill_in "Name", with: @_dramas_generiques_people2.name
    click_on "Create Dramas generiques people2"

    assert_text "Dramas generiques people2 was successfully created"
    click_on "Back"
  end

  test "should update Dramas generiques people2" do
    visit _dramas_generiques_people2_url(@_dramas_generiques_people2)
    click_on "Edit this dramas generiques people2", match: :first

    fill_in "Name", with: @_dramas_generiques_people2.name
    click_on "Update Dramas generiques people2"

    assert_text "Dramas generiques people2 was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas generiques people2" do
    visit _dramas_generiques_people2_url(@_dramas_generiques_people2)
    click_on "Destroy this dramas generiques people2", match: :first

    assert_text "Dramas generiques people2 was successfully destroyed"
  end
end
