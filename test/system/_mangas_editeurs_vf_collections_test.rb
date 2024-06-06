require "application_system_test_case"

class MangasEditeursVfCollectionsTest < ApplicationSystemTestCase
  setup do
    @_mangas_editeurs_vf_collection = _mangas_editeurs_vf_collections(:one)
  end

  test "visiting the index" do
    visit _mangas_editeurs_vf_collections_url
    assert_selector "h1", text: "Mangas editeurs vf collections"
  end

  test "should create mangas editeurs vf collection" do
    visit _mangas_editeurs_vf_collections_url
    click_on "New mangas editeurs vf collection"

    fill_in "Name", with: @_mangas_editeurs_vf_collection.name
    click_on "Create Mangas editeurs vf collection"

    assert_text "Mangas editeurs vf collection was successfully created"
    click_on "Back"
  end

  test "should update Mangas editeurs vf collection" do
    visit _mangas_editeurs_vf_collection_url(@_mangas_editeurs_vf_collection)
    click_on "Edit this mangas editeurs vf collection", match: :first

    fill_in "Name", with: @_mangas_editeurs_vf_collection.name
    click_on "Update Mangas editeurs vf collection"

    assert_text "Mangas editeurs vf collection was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas editeurs vf collection" do
    visit _mangas_editeurs_vf_collection_url(@_mangas_editeurs_vf_collection)
    click_on "Destroy this mangas editeurs vf collection", match: :first

    assert_text "Mangas editeurs vf collection was successfully destroyed"
  end
end
