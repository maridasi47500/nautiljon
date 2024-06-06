require "test_helper"

class MangasEditeursVfCollectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_editeurs_vf_collection = _mangas_editeurs_vf_collections(:one)
  end

  test "should get index" do
    get _mangas_editeurs_vf_collections_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_editeurs_vf_collection_url
    assert_response :success
  end

  test "should create _mangas_editeurs_vf_collection" do
    assert_difference("MangasEditeursVfCollection.count") do
      post _mangas_editeurs_vf_collections_url, params: { _mangas_editeurs_vf_collection: { name: @_mangas_editeurs_vf_collection.name } }
    end

    assert_redirected_to _mangas_editeurs_vf_collection_url(MangasEditeursVfCollection.last)
  end

  test "should show _mangas_editeurs_vf_collection" do
    get _mangas_editeurs_vf_collection_url(@_mangas_editeurs_vf_collection)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_editeurs_vf_collection_url(@_mangas_editeurs_vf_collection)
    assert_response :success
  end

  test "should update _mangas_editeurs_vf_collection" do
    patch _mangas_editeurs_vf_collection_url(@_mangas_editeurs_vf_collection), params: { _mangas_editeurs_vf_collection: { name: @_mangas_editeurs_vf_collection.name } }
    assert_redirected_to _mangas_editeurs_vf_collection_url(@_mangas_editeurs_vf_collection)
  end

  test "should destroy _mangas_editeurs_vf_collection" do
    assert_difference("MangasEditeursVfCollection.count", -1) do
      delete _mangas_editeurs_vf_collection_url(@_mangas_editeurs_vf_collection)
    end

    assert_redirected_to _mangas_editeurs_vf_collections_url
  end
end
