require "test_helper"

class GoodiesLitteratureAsiatiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_litterature_asiatique = _goodies_litterature_asiatiques(:one)
  end

  test "should get index" do
    get _goodies_litterature_asiatiques_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_litterature_asiatique_url
    assert_response :success
  end

  test "should create _goodies_litterature_asiatique" do
    assert_difference("GoodiesLitteratureAsiatique.count") do
      post _goodies_litterature_asiatiques_url, params: { _goodies_litterature_asiatique: { name: @_goodies_litterature_asiatique.name } }
    end

    assert_redirected_to _goodies_litterature_asiatique_url(GoodiesLitteratureAsiatique.last)
  end

  test "should show _goodies_litterature_asiatique" do
    get _goodies_litterature_asiatique_url(@_goodies_litterature_asiatique)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_litterature_asiatique_url(@_goodies_litterature_asiatique)
    assert_response :success
  end

  test "should update _goodies_litterature_asiatique" do
    patch _goodies_litterature_asiatique_url(@_goodies_litterature_asiatique), params: { _goodies_litterature_asiatique: { name: @_goodies_litterature_asiatique.name } }
    assert_redirected_to _goodies_litterature_asiatique_url(@_goodies_litterature_asiatique)
  end

  test "should destroy _goodies_litterature_asiatique" do
    assert_difference("GoodiesLitteratureAsiatique.count", -1) do
      delete _goodies_litterature_asiatique_url(@_goodies_litterature_asiatique)
    end

    assert_redirected_to _goodies_litterature_asiatiques_url
  end
end
