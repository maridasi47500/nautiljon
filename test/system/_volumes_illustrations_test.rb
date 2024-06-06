require "application_system_test_case"

class VolumesIllustrationsTest < ApplicationSystemTestCase
  setup do
    @_volumes_illustration = _volumes_illustrations(:one)
  end

  test "visiting the index" do
    visit _volumes_illustrations_url
    assert_selector "h1", text: "Volumes illustrations"
  end

  test "should create volumes illustration" do
    visit _volumes_illustrations_url
    click_on "New volumes illustration"

    fill_in "Name", with: @_volumes_illustration.name
    click_on "Create Volumes illustration"

    assert_text "Volumes illustration was successfully created"
    click_on "Back"
  end

  test "should update Volumes illustration" do
    visit _volumes_illustration_url(@_volumes_illustration)
    click_on "Edit this volumes illustration", match: :first

    fill_in "Name", with: @_volumes_illustration.name
    click_on "Update Volumes illustration"

    assert_text "Volumes illustration was successfully updated"
    click_on "Back"
  end

  test "should destroy Volumes illustration" do
    visit _volumes_illustration_url(@_volumes_illustration)
    click_on "Destroy this volumes illustration", match: :first

    assert_text "Volumes illustration was successfully destroyed"
  end
end
