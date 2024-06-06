require "test_helper"

class LivresLnPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_ln_plu = _livres_ln_plus(:one)
  end

  test "should get index" do
    get _livres_ln_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_ln_plu_url
    assert_response :success
  end

  test "should create _livres_ln_plu" do
    assert_difference("LivresLnPlu.count") do
      post _livres_ln_plus_url, params: { _livres_ln_plu: { name: @_livres_ln_plu.name } }
    end

    assert_redirected_to _livres_ln_plu_url(LivresLnPlu.last)
  end

  test "should show _livres_ln_plu" do
    get _livres_ln_plu_url(@_livres_ln_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_ln_plu_url(@_livres_ln_plu)
    assert_response :success
  end

  test "should update _livres_ln_plu" do
    patch _livres_ln_plu_url(@_livres_ln_plu), params: { _livres_ln_plu: { name: @_livres_ln_plu.name } }
    assert_redirected_to _livres_ln_plu_url(@_livres_ln_plu)
  end

  test "should destroy _livres_ln_plu" do
    assert_difference("LivresLnPlu.count", -1) do
      delete _livres_ln_plu_url(@_livres_ln_plu)
    end

    assert_redirected_to _livres_ln_plus_url
  end
end
