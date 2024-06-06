require "test_helper"

class GoodiesDramasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_drama = _goodies_dramas(:one)
  end

  test "should get index" do
    get _goodies_dramas_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_drama_url
    assert_response :success
  end

  test "should create _goodies_drama" do
    assert_difference("GoodiesDrama.count") do
      post _goodies_dramas_url, params: { _goodies_drama: { name: @_goodies_drama.name } }
    end

    assert_redirected_to _goodies_drama_url(GoodiesDrama.last)
  end

  test "should show _goodies_drama" do
    get _goodies_drama_url(@_goodies_drama)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_drama_url(@_goodies_drama)
    assert_response :success
  end

  test "should update _goodies_drama" do
    patch _goodies_drama_url(@_goodies_drama), params: { _goodies_drama: { name: @_goodies_drama.name } }
    assert_redirected_to _goodies_drama_url(@_goodies_drama)
  end

  test "should destroy _goodies_drama" do
    assert_difference("GoodiesDrama.count", -1) do
      delete _goodies_drama_url(@_goodies_drama)
    end

    assert_redirected_to _goodies_dramas_url
  end
end
