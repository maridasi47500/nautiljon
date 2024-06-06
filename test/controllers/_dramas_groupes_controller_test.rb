require "test_helper"

class DramasGroupesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_groupe = _dramas_groupes(:one)
  end

  test "should get index" do
    get _dramas_groupes_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_groupe_url
    assert_response :success
  end

  test "should create _dramas_groupe" do
    assert_difference("DramasGroupe.count") do
      post _dramas_groupes_url, params: { _dramas_groupe: { name: @_dramas_groupe.name } }
    end

    assert_redirected_to _dramas_groupe_url(DramasGroupe.last)
  end

  test "should show _dramas_groupe" do
    get _dramas_groupe_url(@_dramas_groupe)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_groupe_url(@_dramas_groupe)
    assert_response :success
  end

  test "should update _dramas_groupe" do
    patch _dramas_groupe_url(@_dramas_groupe), params: { _dramas_groupe: { name: @_dramas_groupe.name } }
    assert_redirected_to _dramas_groupe_url(@_dramas_groupe)
  end

  test "should destroy _dramas_groupe" do
    assert_difference("DramasGroupe.count", -1) do
      delete _dramas_groupe_url(@_dramas_groupe)
    end

    assert_redirected_to _dramas_groupes_url
  end
end
