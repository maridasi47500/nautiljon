require "test_helper"

class PhotobooksDisponibilitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_photobooks_disponibilite = _photobooks_disponibilites(:one)
  end

  test "should get index" do
    get _photobooks_disponibilites_url
    assert_response :success
  end

  test "should get new" do
    get new__photobooks_disponibilite_url
    assert_response :success
  end

  test "should create _photobooks_disponibilite" do
    assert_difference("PhotobooksDisponibilite.count") do
      post _photobooks_disponibilites_url, params: { _photobooks_disponibilite: { name: @_photobooks_disponibilite.name } }
    end

    assert_redirected_to _photobooks_disponibilite_url(PhotobooksDisponibilite.last)
  end

  test "should show _photobooks_disponibilite" do
    get _photobooks_disponibilite_url(@_photobooks_disponibilite)
    assert_response :success
  end

  test "should get edit" do
    get edit__photobooks_disponibilite_url(@_photobooks_disponibilite)
    assert_response :success
  end

  test "should update _photobooks_disponibilite" do
    patch _photobooks_disponibilite_url(@_photobooks_disponibilite), params: { _photobooks_disponibilite: { name: @_photobooks_disponibilite.name } }
    assert_redirected_to _photobooks_disponibilite_url(@_photobooks_disponibilite)
  end

  test "should destroy _photobooks_disponibilite" do
    assert_difference("PhotobooksDisponibilite.count", -1) do
      delete _photobooks_disponibilite_url(@_photobooks_disponibilite)
    end

    assert_redirected_to _photobooks_disponibilites_url
  end
end
