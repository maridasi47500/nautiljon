require "application_system_test_case"

class DramasProgrammesTest < ApplicationSystemTestCase
  setup do
    @_dramas_programme = _dramas_programmes(:one)
  end

  test "visiting the index" do
    visit _dramas_programmes_url
    assert_selector "h1", text: "Dramas programmes"
  end

  test "should create dramas programme" do
    visit _dramas_programmes_url
    click_on "New dramas programme"

    fill_in "Name", with: @_dramas_programme.name
    click_on "Create Dramas programme"

    assert_text "Dramas programme was successfully created"
    click_on "Back"
  end

  test "should update Dramas programme" do
    visit _dramas_programme_url(@_dramas_programme)
    click_on "Edit this dramas programme", match: :first

    fill_in "Name", with: @_dramas_programme.name
    click_on "Update Dramas programme"

    assert_text "Dramas programme was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas programme" do
    visit _dramas_programme_url(@_dramas_programme)
    click_on "Destroy this dramas programme", match: :first

    assert_text "Dramas programme was successfully destroyed"
  end
end
