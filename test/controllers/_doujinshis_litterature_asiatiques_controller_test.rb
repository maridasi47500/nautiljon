require "test_helper"

class DoujinshisLitteratureAsiatiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_litterature_asiatique = _doujinshis_litterature_asiatiques(:one)
  end

  test "should get index" do
    get _doujinshis_litterature_asiatiques_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_litterature_asiatique_url
    assert_response :success
  end

  test "should create _doujinshis_litterature_asiatique" do
    assert_difference("DoujinshisLitteratureAsiatique.count") do
      post _doujinshis_litterature_asiatiques_url, params: { _doujinshis_litterature_asiatique: { name: @_doujinshis_litterature_asiatique.name } }
    end

    assert_redirected_to _doujinshis_litterature_asiatique_url(DoujinshisLitteratureAsiatique.last)
  end

  test "should show _doujinshis_litterature_asiatique" do
    get _doujinshis_litterature_asiatique_url(@_doujinshis_litterature_asiatique)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_litterature_asiatique_url(@_doujinshis_litterature_asiatique)
    assert_response :success
  end

  test "should update _doujinshis_litterature_asiatique" do
    patch _doujinshis_litterature_asiatique_url(@_doujinshis_litterature_asiatique), params: { _doujinshis_litterature_asiatique: { name: @_doujinshis_litterature_asiatique.name } }
    assert_redirected_to _doujinshis_litterature_asiatique_url(@_doujinshis_litterature_asiatique)
  end

  test "should destroy _doujinshis_litterature_asiatique" do
    assert_difference("DoujinshisLitteratureAsiatique.count", -1) do
      delete _doujinshis_litterature_asiatique_url(@_doujinshis_litterature_asiatique)
    end

    assert_redirected_to _doujinshis_litterature_asiatiques_url
  end
end
