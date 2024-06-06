require "test_helper"

class PhotobooksGroupesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_photobooks_groupe = _photobooks_groupes(:one)
  end

  test "should get index" do
    get _photobooks_groupes_url
    assert_response :success
  end

  test "should get new" do
    get new__photobooks_groupe_url
    assert_response :success
  end

  test "should create _photobooks_groupe" do
    assert_difference("PhotobooksGroupe.count") do
      post _photobooks_groupes_url, params: { _photobooks_groupe: { name: @_photobooks_groupe.name } }
    end

    assert_redirected_to _photobooks_groupe_url(PhotobooksGroupe.last)
  end

  test "should show _photobooks_groupe" do
    get _photobooks_groupe_url(@_photobooks_groupe)
    assert_response :success
  end

  test "should get edit" do
    get edit__photobooks_groupe_url(@_photobooks_groupe)
    assert_response :success
  end

  test "should update _photobooks_groupe" do
    patch _photobooks_groupe_url(@_photobooks_groupe), params: { _photobooks_groupe: { name: @_photobooks_groupe.name } }
    assert_redirected_to _photobooks_groupe_url(@_photobooks_groupe)
  end

  test "should destroy _photobooks_groupe" do
    assert_difference("PhotobooksGroupe.count", -1) do
      delete _photobooks_groupe_url(@_photobooks_groupe)
    end

    assert_redirected_to _photobooks_groupes_url
  end
end
