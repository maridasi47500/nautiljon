require "application_system_test_case"

class AnimesEditeursVfsTest < ApplicationSystemTestCase
  setup do
    @animes_editeurs_vf = animes_editeurs_vfs(:one)
  end

  test "visiting the index" do
    visit animes_editeurs_vfs_url
    assert_selector "h1", text: "Animes editeurs vfs"
  end

  test "should create animes editeurs vf" do
    visit animes_editeurs_vfs_url
    click_on "New animes editeurs vf"

    fill_in "Name", with: @animes_editeurs_vf.name
    click_on "Create Animes editeurs vf"

    assert_text "Animes editeurs vf was successfully created"
    click_on "Back"
  end

  test "should update Animes editeurs vf" do
    visit animes_editeurs_vf_url(@animes_editeurs_vf)
    click_on "Edit this animes editeurs vf", match: :first

    fill_in "Name", with: @animes_editeurs_vf.name
    click_on "Update Animes editeurs vf"

    assert_text "Animes editeurs vf was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes editeurs vf" do
    visit animes_editeurs_vf_url(@animes_editeurs_vf)
    click_on "Destroy this animes editeurs vf", match: :first

    assert_text "Animes editeurs vf was successfully destroyed"
  end
end
