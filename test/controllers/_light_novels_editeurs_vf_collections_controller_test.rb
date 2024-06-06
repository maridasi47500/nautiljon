require "test_helper"

class LightNovelsEditeursVfCollectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_editeurs_vf_collection = _light_novels_editeurs_vf_collections(:one)
  end

  test "should get index" do
    get _light_novels_editeurs_vf_collections_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_editeurs_vf_collection_url
    assert_response :success
  end

  test "should create _light_novels_editeurs_vf_collection" do
    assert_difference("LightNovelsEditeursVfCollection.count") do
      post _light_novels_editeurs_vf_collections_url, params: { _light_novels_editeurs_vf_collection: { name: @_light_novels_editeurs_vf_collection.name } }
    end

    assert_redirected_to _light_novels_editeurs_vf_collection_url(LightNovelsEditeursVfCollection.last)
  end

  test "should show _light_novels_editeurs_vf_collection" do
    get _light_novels_editeurs_vf_collection_url(@_light_novels_editeurs_vf_collection)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_editeurs_vf_collection_url(@_light_novels_editeurs_vf_collection)
    assert_response :success
  end

  test "should update _light_novels_editeurs_vf_collection" do
    patch _light_novels_editeurs_vf_collection_url(@_light_novels_editeurs_vf_collection), params: { _light_novels_editeurs_vf_collection: { name: @_light_novels_editeurs_vf_collection.name } }
    assert_redirected_to _light_novels_editeurs_vf_collection_url(@_light_novels_editeurs_vf_collection)
  end

  test "should destroy _light_novels_editeurs_vf_collection" do
    assert_difference("LightNovelsEditeursVfCollection.count", -1) do
      delete _light_novels_editeurs_vf_collection_url(@_light_novels_editeurs_vf_collection)
    end

    assert_redirected_to _light_novels_editeurs_vf_collections_url
  end
end
