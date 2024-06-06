require "test_helper"

class GeneriqueDeJeuVideosJvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_generique_de_jeu_videos_jv = _generique_de_jeu_videos_jvs(:one)
  end

  test "should get index" do
    get _generique_de_jeu_videos_jvs_url
    assert_response :success
  end

  test "should get new" do
    get new__generique_de_jeu_videos_jv_url
    assert_response :success
  end

  test "should create _generique_de_jeu_videos_jv" do
    assert_difference("GeneriqueDeJeuVideosJv.count") do
      post _generique_de_jeu_videos_jvs_url, params: { _generique_de_jeu_videos_jv: { name: @_generique_de_jeu_videos_jv.name } }
    end

    assert_redirected_to _generique_de_jeu_videos_jv_url(GeneriqueDeJeuVideosJv.last)
  end

  test "should show _generique_de_jeu_videos_jv" do
    get _generique_de_jeu_videos_jv_url(@_generique_de_jeu_videos_jv)
    assert_response :success
  end

  test "should get edit" do
    get edit__generique_de_jeu_videos_jv_url(@_generique_de_jeu_videos_jv)
    assert_response :success
  end

  test "should update _generique_de_jeu_videos_jv" do
    patch _generique_de_jeu_videos_jv_url(@_generique_de_jeu_videos_jv), params: { _generique_de_jeu_videos_jv: { name: @_generique_de_jeu_videos_jv.name } }
    assert_redirected_to _generique_de_jeu_videos_jv_url(@_generique_de_jeu_videos_jv)
  end

  test "should destroy _generique_de_jeu_videos_jv" do
    assert_difference("GeneriqueDeJeuVideosJv.count", -1) do
      delete _generique_de_jeu_videos_jv_url(@_generique_de_jeu_videos_jv)
    end

    assert_redirected_to _generique_de_jeu_videos_jvs_url
  end
end
