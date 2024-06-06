require "test_helper"

class LivresLnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_ln = _livres_lns(:one)
  end

  test "should get index" do
    get _livres_lns_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_ln_url
    assert_response :success
  end

  test "should create _livres_ln" do
    assert_difference("LivresLn.count") do
      post _livres_lns_url, params: { _livres_ln: { name: @_livres_ln.name } }
    end

    assert_redirected_to _livres_ln_url(LivresLn.last)
  end

  test "should show _livres_ln" do
    get _livres_ln_url(@_livres_ln)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_ln_url(@_livres_ln)
    assert_response :success
  end

  test "should update _livres_ln" do
    patch _livres_ln_url(@_livres_ln), params: { _livres_ln: { name: @_livres_ln.name } }
    assert_redirected_to _livres_ln_url(@_livres_ln)
  end

  test "should destroy _livres_ln" do
    assert_difference("LivresLn.count", -1) do
      delete _livres_ln_url(@_livres_ln)
    end

    assert_redirected_to _livres_lns_url
  end
end
