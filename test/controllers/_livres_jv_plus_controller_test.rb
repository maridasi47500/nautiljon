require "test_helper"

class LivresJvPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_jv_plu = _livres_jv_plus(:one)
  end

  test "should get index" do
    get _livres_jv_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_jv_plu_url
    assert_response :success
  end

  test "should create _livres_jv_plu" do
    assert_difference("LivresJvPlu.count") do
      post _livres_jv_plus_url, params: { _livres_jv_plu: { name: @_livres_jv_plu.name } }
    end

    assert_redirected_to _livres_jv_plu_url(LivresJvPlu.last)
  end

  test "should show _livres_jv_plu" do
    get _livres_jv_plu_url(@_livres_jv_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_jv_plu_url(@_livres_jv_plu)
    assert_response :success
  end

  test "should update _livres_jv_plu" do
    patch _livres_jv_plu_url(@_livres_jv_plu), params: { _livres_jv_plu: { name: @_livres_jv_plu.name } }
    assert_redirected_to _livres_jv_plu_url(@_livres_jv_plu)
  end

  test "should destroy _livres_jv_plu" do
    assert_difference("LivresJvPlu.count", -1) do
      delete _livres_jv_plu_url(@_livres_jv_plu)
    end

    assert_redirected_to _livres_jv_plus_url
  end
end
