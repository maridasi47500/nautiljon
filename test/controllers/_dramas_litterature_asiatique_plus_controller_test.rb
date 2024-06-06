require "test_helper"

class DramasLitteratureAsiatiquePlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_litterature_asiatique_plu = _dramas_litterature_asiatique_plus(:one)
  end

  test "should get index" do
    get _dramas_litterature_asiatique_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_litterature_asiatique_plu_url
    assert_response :success
  end

  test "should create _dramas_litterature_asiatique_plu" do
    assert_difference("DramasLitteratureAsiatiquePlu.count") do
      post _dramas_litterature_asiatique_plus_url, params: { _dramas_litterature_asiatique_plu: { name: @_dramas_litterature_asiatique_plu.name } }
    end

    assert_redirected_to _dramas_litterature_asiatique_plu_url(DramasLitteratureAsiatiquePlu.last)
  end

  test "should show _dramas_litterature_asiatique_plu" do
    get _dramas_litterature_asiatique_plu_url(@_dramas_litterature_asiatique_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_litterature_asiatique_plu_url(@_dramas_litterature_asiatique_plu)
    assert_response :success
  end

  test "should update _dramas_litterature_asiatique_plu" do
    patch _dramas_litterature_asiatique_plu_url(@_dramas_litterature_asiatique_plu), params: { _dramas_litterature_asiatique_plu: { name: @_dramas_litterature_asiatique_plu.name } }
    assert_redirected_to _dramas_litterature_asiatique_plu_url(@_dramas_litterature_asiatique_plu)
  end

  test "should destroy _dramas_litterature_asiatique_plu" do
    assert_difference("DramasLitteratureAsiatiquePlu.count", -1) do
      delete _dramas_litterature_asiatique_plu_url(@_dramas_litterature_asiatique_plu)
    end

    assert_redirected_to _dramas_litterature_asiatique_plus_url
  end
end
