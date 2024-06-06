require "test_helper"

class SitesDachatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_sites_dachat = _sites_dachats(:one)
  end

  test "should get index" do
    get _sites_dachats_url
    assert_response :success
  end

  test "should get new" do
    get new__sites_dachat_url
    assert_response :success
  end

  test "should create _sites_dachat" do
    assert_difference("SitesDachat.count") do
      post _sites_dachats_url, params: { _sites_dachat: { _sites_dachats_pays_id: @_sites_dachat._sites_dachats_pays_id, acceptregles: @_sites_dachat.acceptregles, description: @_sites_dachat.description, nom: @_sites_dachat.nom, url: @_sites_dachat.url } }
    end

    assert_redirected_to _sites_dachat_url(SitesDachat.last)
  end

  test "should show _sites_dachat" do
    get _sites_dachat_url(@_sites_dachat)
    assert_response :success
  end

  test "should get edit" do
    get edit__sites_dachat_url(@_sites_dachat)
    assert_response :success
  end

  test "should update _sites_dachat" do
    patch _sites_dachat_url(@_sites_dachat), params: { _sites_dachat: { _sites_dachats_pays_id: @_sites_dachat._sites_dachats_pays_id, acceptregles: @_sites_dachat.acceptregles, description: @_sites_dachat.description, nom: @_sites_dachat.nom, url: @_sites_dachat.url } }
    assert_redirected_to _sites_dachat_url(@_sites_dachat)
  end

  test "should destroy _sites_dachat" do
    assert_difference("SitesDachat.count", -1) do
      delete _sites_dachat_url(@_sites_dachat)
    end

    assert_redirected_to _sites_dachats_url
  end
end
