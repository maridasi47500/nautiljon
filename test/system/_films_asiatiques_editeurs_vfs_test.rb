require "application_system_test_case"

class FilmsAsiatiquesEditeursVfsTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_editeurs_vf = _films_asiatiques_editeurs_vfs(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_editeurs_vfs_url
    assert_selector "h1", text: "Films asiatiques editeurs vfs"
  end

  test "should create films asiatiques editeurs vf" do
    visit _films_asiatiques_editeurs_vfs_url
    click_on "New films asiatiques editeurs vf"

    fill_in "Name", with: @_films_asiatiques_editeurs_vf.name
    click_on "Create Films asiatiques editeurs vf"

    assert_text "Films asiatiques editeurs vf was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques editeurs vf" do
    visit _films_asiatiques_editeurs_vf_url(@_films_asiatiques_editeurs_vf)
    click_on "Edit this films asiatiques editeurs vf", match: :first

    fill_in "Name", with: @_films_asiatiques_editeurs_vf.name
    click_on "Update Films asiatiques editeurs vf"

    assert_text "Films asiatiques editeurs vf was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques editeurs vf" do
    visit _films_asiatiques_editeurs_vf_url(@_films_asiatiques_editeurs_vf)
    click_on "Destroy this films asiatiques editeurs vf", match: :first

    assert_text "Films asiatiques editeurs vf was successfully destroyed"
  end
end
