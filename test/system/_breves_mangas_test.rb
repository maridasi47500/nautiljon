require "application_system_test_case"

class BrevesMangasTest < ApplicationSystemTestCase
  setup do
    @_breves_manga = _breves_mangas(:one)
  end

  test "visiting the index" do
    visit _breves_mangas_url
    assert_selector "h1", text: "Breves mangas"
  end

  test "should create breves manga" do
    visit _breves_mangas_url
    click_on "New breves manga"

    fill_in "Name", with: @_breves_manga.name
    click_on "Create Breves manga"

    assert_text "Breves manga was successfully created"
    click_on "Back"
  end

  test "should update Breves manga" do
    visit _breves_manga_url(@_breves_manga)
    click_on "Edit this breves manga", match: :first

    fill_in "Name", with: @_breves_manga.name
    click_on "Update Breves manga"

    assert_text "Breves manga was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves manga" do
    visit _breves_manga_url(@_breves_manga)
    click_on "Destroy this breves manga", match: :first

    assert_text "Breves manga was successfully destroyed"
  end
end
