require "test_helper"

class TablaturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_tablature = _tablatures(:one)
  end

  test "should get index" do
    get _tablatures_url
    assert_response :success
  end

  test "should get new" do
    get new__tablature_url
    assert_response :success
  end

  test "should create _tablature" do
    assert_difference("Tablature.count") do
      post _tablatures_url, params: { _tablature: { _tablatures_people_id: @_tablature._tablatures_people_id, acceptregles: @_tablature.acceptregles, comment: @_tablature.comment, infos: @_tablature.infos, statut_prop: @_tablature.statut_prop, titre: @_tablature.titre } }
    end

    assert_redirected_to _tablature_url(Tablature.last)
  end

  test "should show _tablature" do
    get _tablature_url(@_tablature)
    assert_response :success
  end

  test "should get edit" do
    get edit__tablature_url(@_tablature)
    assert_response :success
  end

  test "should update _tablature" do
    patch _tablature_url(@_tablature), params: { _tablature: { _tablatures_people_id: @_tablature._tablatures_people_id, acceptregles: @_tablature.acceptregles, comment: @_tablature.comment, infos: @_tablature.infos, statut_prop: @_tablature.statut_prop, titre: @_tablature.titre } }
    assert_redirected_to _tablature_url(@_tablature)
  end

  test "should destroy _tablature" do
    assert_difference("Tablature.count", -1) do
      delete _tablature_url(@_tablature)
    end

    assert_redirected_to _tablatures_url
  end
end
