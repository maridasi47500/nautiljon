require "application_system_test_case"

class AnimesLitteratureAsiatiquesTest < ApplicationSystemTestCase
  setup do
    @animes_litterature_asiatique = animes_litterature_asiatiques(:one)
  end

  test "visiting the index" do
    visit animes_litterature_asiatiques_url
    assert_selector "h1", text: "Animes litterature asiatiques"
  end

  test "should create animes litterature asiatique" do
    visit animes_litterature_asiatiques_url
    click_on "New animes litterature asiatique"

    fill_in "Name", with: @animes_litterature_asiatique.name
    click_on "Create Animes litterature asiatique"

    assert_text "Animes litterature asiatique was successfully created"
    click_on "Back"
  end

  test "should update Animes litterature asiatique" do
    visit animes_litterature_asiatique_url(@animes_litterature_asiatique)
    click_on "Edit this animes litterature asiatique", match: :first

    fill_in "Name", with: @animes_litterature_asiatique.name
    click_on "Update Animes litterature asiatique"

    assert_text "Animes litterature asiatique was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes litterature asiatique" do
    visit animes_litterature_asiatique_url(@animes_litterature_asiatique)
    click_on "Destroy this animes litterature asiatique", match: :first

    assert_text "Animes litterature asiatique was successfully destroyed"
  end
end
