require "test_helper"

class PhotobooksFrancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_photobooks_france = _photobooks_frances(:one)
  end

  test "should get index" do
    get _photobooks_frances_url
    assert_response :success
  end

  test "should get new" do
    get new__photobooks_france_url
    assert_response :success
  end

  test "should create _photobooks_france" do
    assert_difference("PhotobooksFrance.count") do
      post _photobooks_frances_url, params: { _photobooks_france: { name: @_photobooks_france.name } }
    end

    assert_redirected_to _photobooks_france_url(PhotobooksFrance.last)
  end

  test "should show _photobooks_france" do
    get _photobooks_france_url(@_photobooks_france)
    assert_response :success
  end

  test "should get edit" do
    get edit__photobooks_france_url(@_photobooks_france)
    assert_response :success
  end

  test "should update _photobooks_france" do
    patch _photobooks_france_url(@_photobooks_france), params: { _photobooks_france: { name: @_photobooks_france.name } }
    assert_redirected_to _photobooks_france_url(@_photobooks_france)
  end

  test "should destroy _photobooks_france" do
    assert_difference("PhotobooksFrance.count", -1) do
      delete _photobooks_france_url(@_photobooks_france)
    end

    assert_redirected_to _photobooks_frances_url
  end
end
