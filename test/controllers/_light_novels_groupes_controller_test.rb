require "test_helper"

class LightNovelsGroupesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_groupe = _light_novels_groupes(:one)
  end

  test "should get index" do
    get _light_novels_groupes_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_groupe_url
    assert_response :success
  end

  test "should create _light_novels_groupe" do
    assert_difference("LightNovelsGroupe.count") do
      post _light_novels_groupes_url, params: { _light_novels_groupe: { name: @_light_novels_groupe.name } }
    end

    assert_redirected_to _light_novels_groupe_url(LightNovelsGroupe.last)
  end

  test "should show _light_novels_groupe" do
    get _light_novels_groupe_url(@_light_novels_groupe)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_groupe_url(@_light_novels_groupe)
    assert_response :success
  end

  test "should update _light_novels_groupe" do
    patch _light_novels_groupe_url(@_light_novels_groupe), params: { _light_novels_groupe: { name: @_light_novels_groupe.name } }
    assert_redirected_to _light_novels_groupe_url(@_light_novels_groupe)
  end

  test "should destroy _light_novels_groupe" do
    assert_difference("LightNovelsGroupe.count", -1) do
      delete _light_novels_groupe_url(@_light_novels_groupe)
    end

    assert_redirected_to _light_novels_groupes_url
  end
end
