require "test_helper"

class LivresLitteratureAsiatiquePlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_litterature_asiatique_plu = _livres_litterature_asiatique_plus(:one)
  end

  test "should get index" do
    get _livres_litterature_asiatique_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_litterature_asiatique_plu_url
    assert_response :success
  end

  test "should create _livres_litterature_asiatique_plu" do
    assert_difference("LivresLitteratureAsiatiquePlu.count") do
      post _livres_litterature_asiatique_plus_url, params: { _livres_litterature_asiatique_plu: { name: @_livres_litterature_asiatique_plu.name } }
    end

    assert_redirected_to _livres_litterature_asiatique_plu_url(LivresLitteratureAsiatiquePlu.last)
  end

  test "should show _livres_litterature_asiatique_plu" do
    get _livres_litterature_asiatique_plu_url(@_livres_litterature_asiatique_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_litterature_asiatique_plu_url(@_livres_litterature_asiatique_plu)
    assert_response :success
  end

  test "should update _livres_litterature_asiatique_plu" do
    patch _livres_litterature_asiatique_plu_url(@_livres_litterature_asiatique_plu), params: { _livres_litterature_asiatique_plu: { name: @_livres_litterature_asiatique_plu.name } }
    assert_redirected_to _livres_litterature_asiatique_plu_url(@_livres_litterature_asiatique_plu)
  end

  test "should destroy _livres_litterature_asiatique_plu" do
    assert_difference("LivresLitteratureAsiatiquePlu.count", -1) do
      delete _livres_litterature_asiatique_plu_url(@_livres_litterature_asiatique_plu)
    end

    assert_redirected_to _livres_litterature_asiatique_plus_url
  end
end
