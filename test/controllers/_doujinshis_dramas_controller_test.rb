require "test_helper"

class DoujinshisDramasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_drama = _doujinshis_dramas(:one)
  end

  test "should get index" do
    get _doujinshis_dramas_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_drama_url
    assert_response :success
  end

  test "should create _doujinshis_drama" do
    assert_difference("DoujinshisDrama.count") do
      post _doujinshis_dramas_url, params: { _doujinshis_drama: { name: @_doujinshis_drama.name } }
    end

    assert_redirected_to _doujinshis_drama_url(DoujinshisDrama.last)
  end

  test "should show _doujinshis_drama" do
    get _doujinshis_drama_url(@_doujinshis_drama)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_drama_url(@_doujinshis_drama)
    assert_response :success
  end

  test "should update _doujinshis_drama" do
    patch _doujinshis_drama_url(@_doujinshis_drama), params: { _doujinshis_drama: { name: @_doujinshis_drama.name } }
    assert_redirected_to _doujinshis_drama_url(@_doujinshis_drama)
  end

  test "should destroy _doujinshis_drama" do
    assert_difference("DoujinshisDrama.count", -1) do
      delete _doujinshis_drama_url(@_doujinshis_drama)
    end

    assert_redirected_to _doujinshis_dramas_url
  end
end
