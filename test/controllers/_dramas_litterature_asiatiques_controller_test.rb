require "test_helper"

class DramasLitteratureAsiatiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_litterature_asiatique = _dramas_litterature_asiatiques(:one)
  end

  test "should get index" do
    get _dramas_litterature_asiatiques_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_litterature_asiatique_url
    assert_response :success
  end

  test "should create _dramas_litterature_asiatique" do
    assert_difference("DramasLitteratureAsiatique.count") do
      post _dramas_litterature_asiatiques_url, params: { _dramas_litterature_asiatique: { name: @_dramas_litterature_asiatique.name } }
    end

    assert_redirected_to _dramas_litterature_asiatique_url(DramasLitteratureAsiatique.last)
  end

  test "should show _dramas_litterature_asiatique" do
    get _dramas_litterature_asiatique_url(@_dramas_litterature_asiatique)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_litterature_asiatique_url(@_dramas_litterature_asiatique)
    assert_response :success
  end

  test "should update _dramas_litterature_asiatique" do
    patch _dramas_litterature_asiatique_url(@_dramas_litterature_asiatique), params: { _dramas_litterature_asiatique: { name: @_dramas_litterature_asiatique.name } }
    assert_redirected_to _dramas_litterature_asiatique_url(@_dramas_litterature_asiatique)
  end

  test "should destroy _dramas_litterature_asiatique" do
    assert_difference("DramasLitteratureAsiatique.count", -1) do
      delete _dramas_litterature_asiatique_url(@_dramas_litterature_asiatique)
    end

    assert_redirected_to _dramas_litterature_asiatiques_url
  end
end
