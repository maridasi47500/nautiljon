require "test_helper"

class PersonnalitesIdGaleriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnalites_id_galery = _personnalites_id_galeries(:one)
  end

  test "should get index" do
    get _personnalites_id_galeries_url
    assert_response :success
  end

  test "should get new" do
    get new__personnalites_id_galery_url
    assert_response :success
  end

  test "should create _personnalites_id_galery" do
    assert_difference("PersonnalitesIdGalerie.count") do
      post _personnalites_id_galeries_url, params: { _personnalites_id_galery: { name: @_personnalites_id_galery.name } }
    end

    assert_redirected_to _personnalites_id_galery_url(PersonnalitesIdGalerie.last)
  end

  test "should show _personnalites_id_galery" do
    get _personnalites_id_galery_url(@_personnalites_id_galery)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnalites_id_galery_url(@_personnalites_id_galery)
    assert_response :success
  end

  test "should update _personnalites_id_galery" do
    patch _personnalites_id_galery_url(@_personnalites_id_galery), params: { _personnalites_id_galery: { name: @_personnalites_id_galery.name } }
    assert_redirected_to _personnalites_id_galery_url(@_personnalites_id_galery)
  end

  test "should destroy _personnalites_id_galery" do
    assert_difference("PersonnalitesIdGalerie.count", -1) do
      delete _personnalites_id_galery_url(@_personnalites_id_galery)
    end

    assert_redirected_to _personnalites_id_galeries_url
  end
end
