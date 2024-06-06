require "application_system_test_case"

class ArtbooksActualiteMinisTest < ApplicationSystemTestCase
  setup do
    @artbooks_actualite_mini = artbooks_actualite_minis(:one)
  end

  test "visiting the index" do
    visit artbooks_actualite_minis_url
    assert_selector "h1", text: "Artbooks actualite minis"
  end

  test "should create artbooks actualite mini" do
    visit artbooks_actualite_minis_url
    click_on "New artbooks actualite mini"

    fill_in "Name", with: @artbooks_actualite_mini.name
    click_on "Create Artbooks actualite mini"

    assert_text "Artbooks actualite mini was successfully created"
    click_on "Back"
  end

  test "should update Artbooks actualite mini" do
    visit artbooks_actualite_mini_url(@artbooks_actualite_mini)
    click_on "Edit this artbooks actualite mini", match: :first

    fill_in "Name", with: @artbooks_actualite_mini.name
    click_on "Update Artbooks actualite mini"

    assert_text "Artbooks actualite mini was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks actualite mini" do
    visit artbooks_actualite_mini_url(@artbooks_actualite_mini)
    click_on "Destroy this artbooks actualite mini", match: :first

    assert_text "Artbooks actualite mini was successfully destroyed"
  end
end
