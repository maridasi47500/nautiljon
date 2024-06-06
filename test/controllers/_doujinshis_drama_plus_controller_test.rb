require "test_helper"

class DoujinshisDramaPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_drama_plu = _doujinshis_drama_plus(:one)
  end

  test "should get index" do
    get _doujinshis_drama_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_drama_plu_url
    assert_response :success
  end

  test "should create _doujinshis_drama_plu" do
    assert_difference("DoujinshisDramaPlu.count") do
      post _doujinshis_drama_plus_url, params: { _doujinshis_drama_plu: { name: @_doujinshis_drama_plu.name } }
    end

    assert_redirected_to _doujinshis_drama_plu_url(DoujinshisDramaPlu.last)
  end

  test "should show _doujinshis_drama_plu" do
    get _doujinshis_drama_plu_url(@_doujinshis_drama_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_drama_plu_url(@_doujinshis_drama_plu)
    assert_response :success
  end

  test "should update _doujinshis_drama_plu" do
    patch _doujinshis_drama_plu_url(@_doujinshis_drama_plu), params: { _doujinshis_drama_plu: { name: @_doujinshis_drama_plu.name } }
    assert_redirected_to _doujinshis_drama_plu_url(@_doujinshis_drama_plu)
  end

  test "should destroy _doujinshis_drama_plu" do
    assert_difference("DoujinshisDramaPlu.count", -1) do
      delete _doujinshis_drama_plu_url(@_doujinshis_drama_plu)
    end

    assert_redirected_to _doujinshis_drama_plus_url
  end
end
