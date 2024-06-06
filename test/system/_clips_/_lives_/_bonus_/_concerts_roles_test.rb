require "application_system_test_case"

class Clips::Lives::Bonus::ConcertsRolesTest < ApplicationSystemTestCase
  setup do
    @_clips___lives___bonus___concerts_role = _clips___lives___bonus___concerts_roles(:one)
  end

  test "visiting the index" do
    visit _clips___lives___bonus___concerts_roles_url
    assert_selector "h1", text: "Concerts roles"
  end

  test "should create concerts role" do
    visit _clips___lives___bonus___concerts_roles_url
    click_on "New concerts role"

    fill_in "Name", with: @_clips___lives___bonus___concerts_role.name
    click_on "Create Concerts role"

    assert_text "Concerts role was successfully created"
    click_on "Back"
  end

  test "should update Concerts role" do
    visit _clips___lives___bonus___concerts_role_url(@_clips___lives___bonus___concerts_role)
    click_on "Edit this concerts role", match: :first

    fill_in "Name", with: @_clips___lives___bonus___concerts_role.name
    click_on "Update Concerts role"

    assert_text "Concerts role was successfully updated"
    click_on "Back"
  end

  test "should destroy Concerts role" do
    visit _clips___lives___bonus___concerts_role_url(@_clips___lives___bonus___concerts_role)
    click_on "Destroy this concerts role", match: :first

    assert_text "Concerts role was successfully destroyed"
  end
end
