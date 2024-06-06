require "application_system_test_case"

class BrevesMangaEditeursTest < ApplicationSystemTestCase
  setup do
    @_breves_manga_editeur = _breves_manga_editeurs(:one)
  end

  test "visiting the index" do
    visit _breves_manga_editeurs_url
    assert_selector "h1", text: "Breves manga editeurs"
  end

  test "should create breves manga editeur" do
    visit _breves_manga_editeurs_url
    click_on "New breves manga editeur"

    fill_in "Name", with: @_breves_manga_editeur.name
    click_on "Create Breves manga editeur"

    assert_text "Breves manga editeur was successfully created"
    click_on "Back"
  end

  test "should update Breves manga editeur" do
    visit _breves_manga_editeur_url(@_breves_manga_editeur)
    click_on "Edit this breves manga editeur", match: :first

    fill_in "Name", with: @_breves_manga_editeur.name
    click_on "Update Breves manga editeur"

    assert_text "Breves manga editeur was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves manga editeur" do
    visit _breves_manga_editeur_url(@_breves_manga_editeur)
    click_on "Destroy this breves manga editeur", match: :first

    assert_text "Breves manga editeur was successfully destroyed"
  end
end
