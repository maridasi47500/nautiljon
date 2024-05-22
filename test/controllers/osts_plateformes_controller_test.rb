require "test_helper"

class OstsPlateformesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @osts_plateforme = osts_plateformes(:one)
  end

  test "should get index" do
    get osts_plateformes_url
    assert_response :success
  end

  test "should get new" do
    get new_osts_plateforme_url
    assert_response :success
  end

  test "should create osts_plateforme" do
    assert_difference("OstsPlateforme.count") do
      post osts_plateformes_url, params: { osts_plateforme: { name: @osts_plateforme.name } }
    end

    assert_redirected_to osts_plateforme_url(OstsPlateforme.last)
  end

  test "should show osts_plateforme" do
    get osts_plateforme_url(@osts_plateforme)
    assert_response :success
  end

  test "should get edit" do
    get edit_osts_plateforme_url(@osts_plateforme)
    assert_response :success
  end

  test "should update osts_plateforme" do
    patch osts_plateforme_url(@osts_plateforme), params: { osts_plateforme: { name: @osts_plateforme.name } }
    assert_redirected_to osts_plateforme_url(@osts_plateforme)
  end

  test "should destroy osts_plateforme" do
    assert_difference("OstsPlateforme.count", -1) do
      delete osts_plateforme_url(@osts_plateforme)
    end

    assert_redirected_to osts_plateformes_url
  end
end
