require "test_helper"

class LivresLitteratureAsiatiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_litterature_asiatique = _livres_litterature_asiatiques(:one)
  end

  test "should get index" do
    get _livres_litterature_asiatiques_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_litterature_asiatique_url
    assert_response :success
  end

  test "should create _livres_litterature_asiatique" do
    assert_difference("LivresLitteratureAsiatique.count") do
      post _livres_litterature_asiatiques_url, params: { _livres_litterature_asiatique: { name: @_livres_litterature_asiatique.name } }
    end

    assert_redirected_to _livres_litterature_asiatique_url(LivresLitteratureAsiatique.last)
  end

  test "should show _livres_litterature_asiatique" do
    get _livres_litterature_asiatique_url(@_livres_litterature_asiatique)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_litterature_asiatique_url(@_livres_litterature_asiatique)
    assert_response :success
  end

  test "should update _livres_litterature_asiatique" do
    patch _livres_litterature_asiatique_url(@_livres_litterature_asiatique), params: { _livres_litterature_asiatique: { name: @_livres_litterature_asiatique.name } }
    assert_redirected_to _livres_litterature_asiatique_url(@_livres_litterature_asiatique)
  end

  test "should destroy _livres_litterature_asiatique" do
    assert_difference("LivresLitteratureAsiatique.count", -1) do
      delete _livres_litterature_asiatique_url(@_livres_litterature_asiatique)
    end

    assert_redirected_to _livres_litterature_asiatiques_url
  end
end
