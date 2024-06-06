require "application_system_test_case"

class LightNovelsEditeursVfCollectionsTest < ApplicationSystemTestCase
  setup do
    @_light_novels_editeurs_vf_collection = _light_novels_editeurs_vf_collections(:one)
  end

  test "visiting the index" do
    visit _light_novels_editeurs_vf_collections_url
    assert_selector "h1", text: "Light novels editeurs vf collections"
  end

  test "should create light novels editeurs vf collection" do
    visit _light_novels_editeurs_vf_collections_url
    click_on "New light novels editeurs vf collection"

    fill_in "Name", with: @_light_novels_editeurs_vf_collection.name
    click_on "Create Light novels editeurs vf collection"

    assert_text "Light novels editeurs vf collection was successfully created"
    click_on "Back"
  end

  test "should update Light novels editeurs vf collection" do
    visit _light_novels_editeurs_vf_collection_url(@_light_novels_editeurs_vf_collection)
    click_on "Edit this light novels editeurs vf collection", match: :first

    fill_in "Name", with: @_light_novels_editeurs_vf_collection.name
    click_on "Update Light novels editeurs vf collection"

    assert_text "Light novels editeurs vf collection was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels editeurs vf collection" do
    visit _light_novels_editeurs_vf_collection_url(@_light_novels_editeurs_vf_collection)
    click_on "Destroy this light novels editeurs vf collection", match: :first

    assert_text "Light novels editeurs vf collection was successfully destroyed"
  end
end
