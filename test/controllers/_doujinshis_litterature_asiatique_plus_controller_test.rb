require "test_helper"

class DoujinshisLitteratureAsiatiquePlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_litterature_asiatique_plu = _doujinshis_litterature_asiatique_plus(:one)
  end

  test "should get index" do
    get _doujinshis_litterature_asiatique_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_litterature_asiatique_plu_url
    assert_response :success
  end

  test "should create _doujinshis_litterature_asiatique_plu" do
    assert_difference("DoujinshisLitteratureAsiatiquePlu.count") do
      post _doujinshis_litterature_asiatique_plus_url, params: { _doujinshis_litterature_asiatique_plu: { name: @_doujinshis_litterature_asiatique_plu.name } }
    end

    assert_redirected_to _doujinshis_litterature_asiatique_plu_url(DoujinshisLitteratureAsiatiquePlu.last)
  end

  test "should show _doujinshis_litterature_asiatique_plu" do
    get _doujinshis_litterature_asiatique_plu_url(@_doujinshis_litterature_asiatique_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_litterature_asiatique_plu_url(@_doujinshis_litterature_asiatique_plu)
    assert_response :success
  end

  test "should update _doujinshis_litterature_asiatique_plu" do
    patch _doujinshis_litterature_asiatique_plu_url(@_doujinshis_litterature_asiatique_plu), params: { _doujinshis_litterature_asiatique_plu: { name: @_doujinshis_litterature_asiatique_plu.name } }
    assert_redirected_to _doujinshis_litterature_asiatique_plu_url(@_doujinshis_litterature_asiatique_plu)
  end

  test "should destroy _doujinshis_litterature_asiatique_plu" do
    assert_difference("DoujinshisLitteratureAsiatiquePlu.count", -1) do
      delete _doujinshis_litterature_asiatique_plu_url(@_doujinshis_litterature_asiatique_plu)
    end

    assert_redirected_to _doujinshis_litterature_asiatique_plus_url
  end
end
