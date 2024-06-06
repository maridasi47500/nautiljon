require "test_helper"

class DoujinsGroupesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujins_groupe = _doujins_groupes(:one)
  end

  test "should get index" do
    get _doujins_groupes_url
    assert_response :success
  end

  test "should get new" do
    get new__doujins_groupe_url
    assert_response :success
  end

  test "should create _doujins_groupe" do
    assert_difference("DoujinsGroupe.count") do
      post _doujins_groupes_url, params: { _doujins_groupe: { name: @_doujins_groupe.name } }
    end

    assert_redirected_to _doujins_groupe_url(DoujinsGroupe.last)
  end

  test "should show _doujins_groupe" do
    get _doujins_groupe_url(@_doujins_groupe)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujins_groupe_url(@_doujins_groupe)
    assert_response :success
  end

  test "should update _doujins_groupe" do
    patch _doujins_groupe_url(@_doujins_groupe), params: { _doujins_groupe: { name: @_doujins_groupe.name } }
    assert_redirected_to _doujins_groupe_url(@_doujins_groupe)
  end

  test "should destroy _doujins_groupe" do
    assert_difference("DoujinsGroupe.count", -1) do
      delete _doujins_groupe_url(@_doujins_groupe)
    end

    assert_redirected_to _doujins_groupes_url
  end
end
