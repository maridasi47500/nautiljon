require "test_helper"

class CdsGroupesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_cds_groupe = _cds_groupes(:one)
  end

  test "should get index" do
    get _cds_groupes_url
    assert_response :success
  end

  test "should get new" do
    get new__cds_groupe_url
    assert_response :success
  end

  test "should create _cds_groupe" do
    assert_difference("CdsGroupe.count") do
      post _cds_groupes_url, params: { _cds_groupe: { name: @_cds_groupe.name } }
    end

    assert_redirected_to _cds_groupe_url(CdsGroupe.last)
  end

  test "should show _cds_groupe" do
    get _cds_groupe_url(@_cds_groupe)
    assert_response :success
  end

  test "should get edit" do
    get edit__cds_groupe_url(@_cds_groupe)
    assert_response :success
  end

  test "should update _cds_groupe" do
    patch _cds_groupe_url(@_cds_groupe), params: { _cds_groupe: { name: @_cds_groupe.name } }
    assert_redirected_to _cds_groupe_url(@_cds_groupe)
  end

  test "should destroy _cds_groupe" do
    assert_difference("CdsGroupe.count", -1) do
      delete _cds_groupe_url(@_cds_groupe)
    end

    assert_redirected_to _cds_groupes_url
  end
end
