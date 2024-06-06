require "application_system_test_case"

class ArtbooksGroupesTest < ApplicationSystemTestCase
  setup do
    @artbooks_groupe = artbooks_groupes(:one)
  end

  test "visiting the index" do
    visit artbooks_groupes_url
    assert_selector "h1", text: "Artbooks groupes"
  end

  test "should create artbooks groupe" do
    visit artbooks_groupes_url
    click_on "New artbooks groupe"

    fill_in "Name", with: @artbooks_groupe.name
    click_on "Create Artbooks groupe"

    assert_text "Artbooks groupe was successfully created"
    click_on "Back"
  end

  test "should update Artbooks groupe" do
    visit artbooks_groupe_url(@artbooks_groupe)
    click_on "Edit this artbooks groupe", match: :first

    fill_in "Name", with: @artbooks_groupe.name
    click_on "Update Artbooks groupe"

    assert_text "Artbooks groupe was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks groupe" do
    visit artbooks_groupe_url(@artbooks_groupe)
    click_on "Destroy this artbooks groupe", match: :first

    assert_text "Artbooks groupe was successfully destroyed"
  end
end
