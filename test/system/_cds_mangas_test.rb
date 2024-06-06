require "application_system_test_case"

class CdsMangasTest < ApplicationSystemTestCase
  setup do
    @_cds_manga = _cds_mangas(:one)
  end

  test "visiting the index" do
    visit _cds_mangas_url
    assert_selector "h1", text: "Cds mangas"
  end

  test "should create cds manga" do
    visit _cds_mangas_url
    click_on "New cds manga"

    fill_in "Name", with: @_cds_manga.name
    click_on "Create Cds manga"

    assert_text "Cds manga was successfully created"
    click_on "Back"
  end

  test "should update Cds manga" do
    visit _cds_manga_url(@_cds_manga)
    click_on "Edit this cds manga", match: :first

    fill_in "Name", with: @_cds_manga.name
    click_on "Update Cds manga"

    assert_text "Cds manga was successfully updated"
    click_on "Back"
  end

  test "should destroy Cds manga" do
    visit _cds_manga_url(@_cds_manga)
    click_on "Destroy this cds manga", match: :first

    assert_text "Cds manga was successfully destroyed"
  end
end
