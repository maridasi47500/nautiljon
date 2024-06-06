require "test_helper"

class MangasLitteratureAsiatiquePlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_litterature_asiatique_plu = _mangas_litterature_asiatique_plus(:one)
  end

  test "should get index" do
    get _mangas_litterature_asiatique_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_litterature_asiatique_plu_url
    assert_response :success
  end

  test "should create _mangas_litterature_asiatique_plu" do
    assert_difference("MangasLitteratureAsiatiquePlu.count") do
      post _mangas_litterature_asiatique_plus_url, params: { _mangas_litterature_asiatique_plu: { name: @_mangas_litterature_asiatique_plu.name } }
    end

    assert_redirected_to _mangas_litterature_asiatique_plu_url(MangasLitteratureAsiatiquePlu.last)
  end

  test "should show _mangas_litterature_asiatique_plu" do
    get _mangas_litterature_asiatique_plu_url(@_mangas_litterature_asiatique_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_litterature_asiatique_plu_url(@_mangas_litterature_asiatique_plu)
    assert_response :success
  end

  test "should update _mangas_litterature_asiatique_plu" do
    patch _mangas_litterature_asiatique_plu_url(@_mangas_litterature_asiatique_plu), params: { _mangas_litterature_asiatique_plu: { name: @_mangas_litterature_asiatique_plu.name } }
    assert_redirected_to _mangas_litterature_asiatique_plu_url(@_mangas_litterature_asiatique_plu)
  end

  test "should destroy _mangas_litterature_asiatique_plu" do
    assert_difference("MangasLitteratureAsiatiquePlu.count", -1) do
      delete _mangas_litterature_asiatique_plu_url(@_mangas_litterature_asiatique_plu)
    end

    assert_redirected_to _mangas_litterature_asiatique_plus_url
  end
end
