require "test_helper"

class DramasDramasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_drama = _dramas_dramas(:one)
  end

  test "should get index" do
    get _dramas_dramas_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_drama_url
    assert_response :success
  end

  test "should create _dramas_drama" do
    assert_difference("DramasDrama.count") do
      post _dramas_dramas_url, params: { _dramas_drama: { name: @_dramas_drama.name } }
    end

    assert_redirected_to _dramas_drama_url(DramasDrama.last)
  end

  test "should show _dramas_drama" do
    get _dramas_drama_url(@_dramas_drama)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_drama_url(@_dramas_drama)
    assert_response :success
  end

  test "should update _dramas_drama" do
    patch _dramas_drama_url(@_dramas_drama), params: { _dramas_drama: { name: @_dramas_drama.name } }
    assert_redirected_to _dramas_drama_url(@_dramas_drama)
  end

  test "should destroy _dramas_drama" do
    assert_difference("DramasDrama.count", -1) do
      delete _dramas_drama_url(@_dramas_drama)
    end

    assert_redirected_to _dramas_dramas_url
  end
end
