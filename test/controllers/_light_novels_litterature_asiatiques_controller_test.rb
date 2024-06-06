require "test_helper"

class LightNovelsLitteratureAsiatiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_litterature_asiatique = _light_novels_litterature_asiatiques(:one)
  end

  test "should get index" do
    get _light_novels_litterature_asiatiques_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_litterature_asiatique_url
    assert_response :success
  end

  test "should create _light_novels_litterature_asiatique" do
    assert_difference("LightNovelsLitteratureAsiatique.count") do
      post _light_novels_litterature_asiatiques_url, params: { _light_novels_litterature_asiatique: { name: @_light_novels_litterature_asiatique.name } }
    end

    assert_redirected_to _light_novels_litterature_asiatique_url(LightNovelsLitteratureAsiatique.last)
  end

  test "should show _light_novels_litterature_asiatique" do
    get _light_novels_litterature_asiatique_url(@_light_novels_litterature_asiatique)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_litterature_asiatique_url(@_light_novels_litterature_asiatique)
    assert_response :success
  end

  test "should update _light_novels_litterature_asiatique" do
    patch _light_novels_litterature_asiatique_url(@_light_novels_litterature_asiatique), params: { _light_novels_litterature_asiatique: { name: @_light_novels_litterature_asiatique.name } }
    assert_redirected_to _light_novels_litterature_asiatique_url(@_light_novels_litterature_asiatique)
  end

  test "should destroy _light_novels_litterature_asiatique" do
    assert_difference("LightNovelsLitteratureAsiatique.count", -1) do
      delete _light_novels_litterature_asiatique_url(@_light_novels_litterature_asiatique)
    end

    assert_redirected_to _light_novels_litterature_asiatiques_url
  end
end
