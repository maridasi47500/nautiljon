require "test_helper"

class BrevesPhotobooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_photobook = _breves_photobooks(:one)
  end

  test "should get index" do
    get _breves_photobooks_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_photobook_url
    assert_response :success
  end

  test "should create _breves_photobook" do
    assert_difference("BrevesPhotobook.count") do
      post _breves_photobooks_url, params: { _breves_photobook: { name: @_breves_photobook.name } }
    end

    assert_redirected_to _breves_photobook_url(BrevesPhotobook.last)
  end

  test "should show _breves_photobook" do
    get _breves_photobook_url(@_breves_photobook)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_photobook_url(@_breves_photobook)
    assert_response :success
  end

  test "should update _breves_photobook" do
    patch _breves_photobook_url(@_breves_photobook), params: { _breves_photobook: { name: @_breves_photobook.name } }
    assert_redirected_to _breves_photobook_url(@_breves_photobook)
  end

  test "should destroy _breves_photobook" do
    assert_difference("BrevesPhotobook.count", -1) do
      delete _breves_photobook_url(@_breves_photobook)
    end

    assert_redirected_to _breves_photobooks_url
  end
end
