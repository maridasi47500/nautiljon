require "application_system_test_case"

class MangasPaysTest < ApplicationSystemTestCase
  setup do
    @_mangas_pay = _mangas_pays(:one)
  end

  test "visiting the index" do
    visit _mangas_pays_url
    assert_selector "h1", text: "Mangas pays"
  end

  test "should create mangas pay" do
    visit _mangas_pays_url
    click_on "New mangas pay"

    fill_in "Name", with: @_mangas_pay.name
    click_on "Create Mangas pay"

    assert_text "Mangas pay was successfully created"
    click_on "Back"
  end

  test "should update Mangas pay" do
    visit _mangas_pay_url(@_mangas_pay)
    click_on "Edit this mangas pay", match: :first

    fill_in "Name", with: @_mangas_pay.name
    click_on "Update Mangas pay"

    assert_text "Mangas pay was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas pay" do
    visit _mangas_pay_url(@_mangas_pay)
    click_on "Destroy this mangas pay", match: :first

    assert_text "Mangas pay was successfully destroyed"
  end
end
