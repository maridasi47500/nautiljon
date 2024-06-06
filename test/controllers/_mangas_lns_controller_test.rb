require "test_helper"

class MangasLnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_ln = _mangas_lns(:one)
  end

  test "should get index" do
    get _mangas_lns_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_ln_url
    assert_response :success
  end

  test "should create _mangas_ln" do
    assert_difference("MangasLn.count") do
      post _mangas_lns_url, params: { _mangas_ln: { name: @_mangas_ln.name } }
    end

    assert_redirected_to _mangas_ln_url(MangasLn.last)
  end

  test "should show _mangas_ln" do
    get _mangas_ln_url(@_mangas_ln)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_ln_url(@_mangas_ln)
    assert_response :success
  end

  test "should update _mangas_ln" do
    patch _mangas_ln_url(@_mangas_ln), params: { _mangas_ln: { name: @_mangas_ln.name } }
    assert_redirected_to _mangas_ln_url(@_mangas_ln)
  end

  test "should destroy _mangas_ln" do
    assert_difference("MangasLn.count", -1) do
      delete _mangas_ln_url(@_mangas_ln)
    end

    assert_redirected_to _mangas_lns_url
  end
end
