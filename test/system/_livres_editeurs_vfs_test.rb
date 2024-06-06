require "application_system_test_case"

class LivresEditeursVfsTest < ApplicationSystemTestCase
  setup do
    @_livres_editeurs_vf = _livres_editeurs_vfs(:one)
  end

  test "visiting the index" do
    visit _livres_editeurs_vfs_url
    assert_selector "h1", text: "Livres editeurs vfs"
  end

  test "should create livres editeurs vf" do
    visit _livres_editeurs_vfs_url
    click_on "New livres editeurs vf"

    fill_in "Name", with: @_livres_editeurs_vf.name
    click_on "Create Livres editeurs vf"

    assert_text "Livres editeurs vf was successfully created"
    click_on "Back"
  end

  test "should update Livres editeurs vf" do
    visit _livres_editeurs_vf_url(@_livres_editeurs_vf)
    click_on "Edit this livres editeurs vf", match: :first

    fill_in "Name", with: @_livres_editeurs_vf.name
    click_on "Update Livres editeurs vf"

    assert_text "Livres editeurs vf was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres editeurs vf" do
    visit _livres_editeurs_vf_url(@_livres_editeurs_vf)
    click_on "Destroy this livres editeurs vf", match: :first

    assert_text "Livres editeurs vf was successfully destroyed"
  end
end
