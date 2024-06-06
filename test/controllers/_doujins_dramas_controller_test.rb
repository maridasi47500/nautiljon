require "test_helper"

class DoujinsDramasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujins_drama = _doujins_dramas(:one)
  end

  test "should get index" do
    get _doujins_dramas_url
    assert_response :success
  end

  test "should get new" do
    get new__doujins_drama_url
    assert_response :success
  end

  test "should create _doujins_drama" do
    assert_difference("DoujinsDrama.count") do
      post _doujins_dramas_url, params: { _doujins_drama: { name: @_doujins_drama.name } }
    end

    assert_redirected_to _doujins_drama_url(DoujinsDrama.last)
  end

  test "should show _doujins_drama" do
    get _doujins_drama_url(@_doujins_drama)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujins_drama_url(@_doujins_drama)
    assert_response :success
  end

  test "should update _doujins_drama" do
    patch _doujins_drama_url(@_doujins_drama), params: { _doujins_drama: { name: @_doujins_drama.name } }
    assert_redirected_to _doujins_drama_url(@_doujins_drama)
  end

  test "should destroy _doujins_drama" do
    assert_difference("DoujinsDrama.count", -1) do
      delete _doujins_drama_url(@_doujins_drama)
    end

    assert_redirected_to _doujins_dramas_url
  end
end
