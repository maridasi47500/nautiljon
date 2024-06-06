require "test_helper"

class GoodiesGroupesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_groupe = _goodies_groupes(:one)
  end

  test "should get index" do
    get _goodies_groupes_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_groupe_url
    assert_response :success
  end

  test "should create _goodies_groupe" do
    assert_difference("GoodiesGroupe.count") do
      post _goodies_groupes_url, params: { _goodies_groupe: { name: @_goodies_groupe.name } }
    end

    assert_redirected_to _goodies_groupe_url(GoodiesGroupe.last)
  end

  test "should show _goodies_groupe" do
    get _goodies_groupe_url(@_goodies_groupe)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_groupe_url(@_goodies_groupe)
    assert_response :success
  end

  test "should update _goodies_groupe" do
    patch _goodies_groupe_url(@_goodies_groupe), params: { _goodies_groupe: { name: @_goodies_groupe.name } }
    assert_redirected_to _goodies_groupe_url(@_goodies_groupe)
  end

  test "should destroy _goodies_groupe" do
    assert_difference("GoodiesGroupe.count", -1) do
      delete _goodies_groupe_url(@_goodies_groupe)
    end

    assert_redirected_to _goodies_groupes_url
  end
end
