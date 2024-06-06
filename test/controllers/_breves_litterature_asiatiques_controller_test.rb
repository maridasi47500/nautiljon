require "test_helper"

class BrevesLitteratureAsiatiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_litterature_asiatique = _breves_litterature_asiatiques(:one)
  end

  test "should get index" do
    get _breves_litterature_asiatiques_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_litterature_asiatique_url
    assert_response :success
  end

  test "should create _breves_litterature_asiatique" do
    assert_difference("BrevesLitteratureAsiatique.count") do
      post _breves_litterature_asiatiques_url, params: { _breves_litterature_asiatique: { name: @_breves_litterature_asiatique.name } }
    end

    assert_redirected_to _breves_litterature_asiatique_url(BrevesLitteratureAsiatique.last)
  end

  test "should show _breves_litterature_asiatique" do
    get _breves_litterature_asiatique_url(@_breves_litterature_asiatique)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_litterature_asiatique_url(@_breves_litterature_asiatique)
    assert_response :success
  end

  test "should update _breves_litterature_asiatique" do
    patch _breves_litterature_asiatique_url(@_breves_litterature_asiatique), params: { _breves_litterature_asiatique: { name: @_breves_litterature_asiatique.name } }
    assert_redirected_to _breves_litterature_asiatique_url(@_breves_litterature_asiatique)
  end

  test "should destroy _breves_litterature_asiatique" do
    assert_difference("BrevesLitteratureAsiatique.count", -1) do
      delete _breves_litterature_asiatique_url(@_breves_litterature_asiatique)
    end

    assert_redirected_to _breves_litterature_asiatiques_url
  end
end
