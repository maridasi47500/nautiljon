require "test_helper"

class DoujinshisGroupesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_groupe = _doujinshis_groupes(:one)
  end

  test "should get index" do
    get _doujinshis_groupes_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_groupe_url
    assert_response :success
  end

  test "should create _doujinshis_groupe" do
    assert_difference("DoujinshisGroupe.count") do
      post _doujinshis_groupes_url, params: { _doujinshis_groupe: { name: @_doujinshis_groupe.name } }
    end

    assert_redirected_to _doujinshis_groupe_url(DoujinshisGroupe.last)
  end

  test "should show _doujinshis_groupe" do
    get _doujinshis_groupe_url(@_doujinshis_groupe)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_groupe_url(@_doujinshis_groupe)
    assert_response :success
  end

  test "should update _doujinshis_groupe" do
    patch _doujinshis_groupe_url(@_doujinshis_groupe), params: { _doujinshis_groupe: { name: @_doujinshis_groupe.name } }
    assert_redirected_to _doujinshis_groupe_url(@_doujinshis_groupe)
  end

  test "should destroy _doujinshis_groupe" do
    assert_difference("DoujinshisGroupe.count", -1) do
      delete _doujinshis_groupe_url(@_doujinshis_groupe)
    end

    assert_redirected_to _doujinshis_groupes_url
  end
end
