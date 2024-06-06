require "application_system_test_case"

class AnimesLitteratureAsiatiquePlusTest < ApplicationSystemTestCase
  setup do
    @animes_litterature_asiatique_plu = animes_litterature_asiatique_plus(:one)
  end

  test "visiting the index" do
    visit animes_litterature_asiatique_plus_url
    assert_selector "h1", text: "Animes litterature asiatique plus"
  end

  test "should create animes litterature asiatique plu" do
    visit animes_litterature_asiatique_plus_url
    click_on "New animes litterature asiatique plu"

    fill_in "Name", with: @animes_litterature_asiatique_plu.name
    click_on "Create Animes litterature asiatique plu"

    assert_text "Animes litterature asiatique plu was successfully created"
    click_on "Back"
  end

  test "should update Animes litterature asiatique plu" do
    visit animes_litterature_asiatique_plu_url(@animes_litterature_asiatique_plu)
    click_on "Edit this animes litterature asiatique plu", match: :first

    fill_in "Name", with: @animes_litterature_asiatique_plu.name
    click_on "Update Animes litterature asiatique plu"

    assert_text "Animes litterature asiatique plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes litterature asiatique plu" do
    visit animes_litterature_asiatique_plu_url(@animes_litterature_asiatique_plu)
    click_on "Destroy this animes litterature asiatique plu", match: :first

    assert_text "Animes litterature asiatique plu was successfully destroyed"
  end
end
