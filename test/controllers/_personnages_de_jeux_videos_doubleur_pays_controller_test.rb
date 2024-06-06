require "test_helper"

class PersonnagesDeJeuxVideosDoubleurPaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnages_de_jeux_videos_doubleur_pay = _personnages_de_jeux_videos_doubleur_pays(:one)
  end

  test "should get index" do
    get _personnages_de_jeux_videos_doubleur_pays_url
    assert_response :success
  end

  test "should get new" do
    get new__personnages_de_jeux_videos_doubleur_pay_url
    assert_response :success
  end

  test "should create _personnages_de_jeux_videos_doubleur_pay" do
    assert_difference("PersonnagesDeJeuxVideosDoubleurPay.count") do
      post _personnages_de_jeux_videos_doubleur_pays_url, params: { _personnages_de_jeux_videos_doubleur_pay: { name: @_personnages_de_jeux_videos_doubleur_pay.name } }
    end

    assert_redirected_to _personnages_de_jeux_videos_doubleur_pay_url(PersonnagesDeJeuxVideosDoubleurPay.last)
  end

  test "should show _personnages_de_jeux_videos_doubleur_pay" do
    get _personnages_de_jeux_videos_doubleur_pay_url(@_personnages_de_jeux_videos_doubleur_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnages_de_jeux_videos_doubleur_pay_url(@_personnages_de_jeux_videos_doubleur_pay)
    assert_response :success
  end

  test "should update _personnages_de_jeux_videos_doubleur_pay" do
    patch _personnages_de_jeux_videos_doubleur_pay_url(@_personnages_de_jeux_videos_doubleur_pay), params: { _personnages_de_jeux_videos_doubleur_pay: { name: @_personnages_de_jeux_videos_doubleur_pay.name } }
    assert_redirected_to _personnages_de_jeux_videos_doubleur_pay_url(@_personnages_de_jeux_videos_doubleur_pay)
  end

  test "should destroy _personnages_de_jeux_videos_doubleur_pay" do
    assert_difference("PersonnagesDeJeuxVideosDoubleurPay.count", -1) do
      delete _personnages_de_jeux_videos_doubleur_pay_url(@_personnages_de_jeux_videos_doubleur_pay)
    end

    assert_redirected_to _personnages_de_jeux_videos_doubleur_pays_url
  end
end
