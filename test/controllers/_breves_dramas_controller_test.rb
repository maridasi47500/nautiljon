require "test_helper"

class BrevesDramasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_drama = _breves_dramas(:one)
  end

  test "should get index" do
    get _breves_dramas_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_drama_url
    assert_response :success
  end

  test "should create _breves_drama" do
    assert_difference("BrevesDrama.count") do
      post _breves_dramas_url, params: { _breves_drama: { name: @_breves_drama.name } }
    end

    assert_redirected_to _breves_drama_url(BrevesDrama.last)
  end

  test "should show _breves_drama" do
    get _breves_drama_url(@_breves_drama)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_drama_url(@_breves_drama)
    assert_response :success
  end

  test "should update _breves_drama" do
    patch _breves_drama_url(@_breves_drama), params: { _breves_drama: { name: @_breves_drama.name } }
    assert_redirected_to _breves_drama_url(@_breves_drama)
  end

  test "should destroy _breves_drama" do
    assert_difference("BrevesDrama.count", -1) do
      delete _breves_drama_url(@_breves_drama)
    end

    assert_redirected_to _breves_dramas_url
  end
end
