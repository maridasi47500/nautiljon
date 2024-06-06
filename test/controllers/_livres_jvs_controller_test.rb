require "test_helper"

class LivresJvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_jv = _livres_jvs(:one)
  end

  test "should get index" do
    get _livres_jvs_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_jv_url
    assert_response :success
  end

  test "should create _livres_jv" do
    assert_difference("LivresJv.count") do
      post _livres_jvs_url, params: { _livres_jv: { name: @_livres_jv.name } }
    end

    assert_redirected_to _livres_jv_url(LivresJv.last)
  end

  test "should show _livres_jv" do
    get _livres_jv_url(@_livres_jv)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_jv_url(@_livres_jv)
    assert_response :success
  end

  test "should update _livres_jv" do
    patch _livres_jv_url(@_livres_jv), params: { _livres_jv: { name: @_livres_jv.name } }
    assert_redirected_to _livres_jv_url(@_livres_jv)
  end

  test "should destroy _livres_jv" do
    assert_difference("LivresJv.count", -1) do
      delete _livres_jv_url(@_livres_jv)
    end

    assert_redirected_to _livres_jvs_url
  end
end
