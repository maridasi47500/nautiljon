require "test_helper"

class LivresAmPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_am_plu = _livres_am_plus(:one)
  end

  test "should get index" do
    get _livres_am_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_am_plu_url
    assert_response :success
  end

  test "should create _livres_am_plu" do
    assert_difference("LivresAmPlu.count") do
      post _livres_am_plus_url, params: { _livres_am_plu: { name: @_livres_am_plu.name } }
    end

    assert_redirected_to _livres_am_plu_url(LivresAmPlu.last)
  end

  test "should show _livres_am_plu" do
    get _livres_am_plu_url(@_livres_am_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_am_plu_url(@_livres_am_plu)
    assert_response :success
  end

  test "should update _livres_am_plu" do
    patch _livres_am_plu_url(@_livres_am_plu), params: { _livres_am_plu: { name: @_livres_am_plu.name } }
    assert_redirected_to _livres_am_plu_url(@_livres_am_plu)
  end

  test "should destroy _livres_am_plu" do
    assert_difference("LivresAmPlu.count", -1) do
      delete _livres_am_plu_url(@_livres_am_plu)
    end

    assert_redirected_to _livres_am_plus_url
  end
end
