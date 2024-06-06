require "test_helper"

class PhotobooksBonusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_photobooks_bonu = _photobooks_bonus(:one)
  end

  test "should get index" do
    get _photobooks_bonus_url
    assert_response :success
  end

  test "should get new" do
    get new__photobooks_bonu_url
    assert_response :success
  end

  test "should create _photobooks_bonu" do
    assert_difference("PhotobooksBonu.count") do
      post _photobooks_bonus_url, params: { _photobooks_bonu: { name: @_photobooks_bonu.name } }
    end

    assert_redirected_to _photobooks_bonu_url(PhotobooksBonu.last)
  end

  test "should show _photobooks_bonu" do
    get _photobooks_bonu_url(@_photobooks_bonu)
    assert_response :success
  end

  test "should get edit" do
    get edit__photobooks_bonu_url(@_photobooks_bonu)
    assert_response :success
  end

  test "should update _photobooks_bonu" do
    patch _photobooks_bonu_url(@_photobooks_bonu), params: { _photobooks_bonu: { name: @_photobooks_bonu.name } }
    assert_redirected_to _photobooks_bonu_url(@_photobooks_bonu)
  end

  test "should destroy _photobooks_bonu" do
    assert_difference("PhotobooksBonu.count", -1) do
      delete _photobooks_bonu_url(@_photobooks_bonu)
    end

    assert_redirected_to _photobooks_bonus_url
  end
end
