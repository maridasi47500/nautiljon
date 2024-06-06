require "application_system_test_case"

class MangasCommercesTest < ApplicationSystemTestCase
  setup do
    @_mangas_commerce = _mangas_commerces(:one)
  end

  test "visiting the index" do
    visit _mangas_commerces_url
    assert_selector "h1", text: "Mangas commerces"
  end

  test "should create mangas commerce" do
    visit _mangas_commerces_url
    click_on "New mangas commerce"

    fill_in "Name", with: @_mangas_commerce.name
    click_on "Create Mangas commerce"

    assert_text "Mangas commerce was successfully created"
    click_on "Back"
  end

  test "should update Mangas commerce" do
    visit _mangas_commerce_url(@_mangas_commerce)
    click_on "Edit this mangas commerce", match: :first

    fill_in "Name", with: @_mangas_commerce.name
    click_on "Update Mangas commerce"

    assert_text "Mangas commerce was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas commerce" do
    visit _mangas_commerce_url(@_mangas_commerce)
    click_on "Destroy this mangas commerce", match: :first

    assert_text "Mangas commerce was successfully destroyed"
  end
end
