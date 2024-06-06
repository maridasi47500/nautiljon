require "test_helper"

class GoodiesPhotobooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_photobook = _goodies_photobooks(:one)
  end

  test "should get index" do
    get _goodies_photobooks_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_photobook_url
    assert_response :success
  end

  test "should create _goodies_photobook" do
    assert_difference("GoodiesPhotobook.count") do
      post _goodies_photobooks_url, params: { _goodies_photobook: { name: @_goodies_photobook.name } }
    end

    assert_redirected_to _goodies_photobook_url(GoodiesPhotobook.last)
  end

  test "should show _goodies_photobook" do
    get _goodies_photobook_url(@_goodies_photobook)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_photobook_url(@_goodies_photobook)
    assert_response :success
  end

  test "should update _goodies_photobook" do
    patch _goodies_photobook_url(@_goodies_photobook), params: { _goodies_photobook: { name: @_goodies_photobook.name } }
    assert_redirected_to _goodies_photobook_url(@_goodies_photobook)
  end

  test "should destroy _goodies_photobook" do
    assert_difference("GoodiesPhotobook.count", -1) do
      delete _goodies_photobook_url(@_goodies_photobook)
    end

    assert_redirected_to _goodies_photobooks_url
  end
end
