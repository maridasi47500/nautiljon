require "test_helper"

class GeneriqueDeJeuVideosJvGenericsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_generique_de_jeu_videos_jv_generic = _generique_de_jeu_videos_jv_generics(:one)
  end

  test "should get index" do
    get _generique_de_jeu_videos_jv_generics_url
    assert_response :success
  end

  test "should get new" do
    get new__generique_de_jeu_videos_jv_generic_url
    assert_response :success
  end

  test "should create _generique_de_jeu_videos_jv_generic" do
    assert_difference("GeneriqueDeJeuVideosJvGeneric.count") do
      post _generique_de_jeu_videos_jv_generics_url, params: { _generique_de_jeu_videos_jv_generic: { name: @_generique_de_jeu_videos_jv_generic.name } }
    end

    assert_redirected_to _generique_de_jeu_videos_jv_generic_url(GeneriqueDeJeuVideosJvGeneric.last)
  end

  test "should show _generique_de_jeu_videos_jv_generic" do
    get _generique_de_jeu_videos_jv_generic_url(@_generique_de_jeu_videos_jv_generic)
    assert_response :success
  end

  test "should get edit" do
    get edit__generique_de_jeu_videos_jv_generic_url(@_generique_de_jeu_videos_jv_generic)
    assert_response :success
  end

  test "should update _generique_de_jeu_videos_jv_generic" do
    patch _generique_de_jeu_videos_jv_generic_url(@_generique_de_jeu_videos_jv_generic), params: { _generique_de_jeu_videos_jv_generic: { name: @_generique_de_jeu_videos_jv_generic.name } }
    assert_redirected_to _generique_de_jeu_videos_jv_generic_url(@_generique_de_jeu_videos_jv_generic)
  end

  test "should destroy _generique_de_jeu_videos_jv_generic" do
    assert_difference("GeneriqueDeJeuVideosJvGeneric.count", -1) do
      delete _generique_de_jeu_videos_jv_generic_url(@_generique_de_jeu_videos_jv_generic)
    end

    assert_redirected_to _generique_de_jeu_videos_jv_generics_url
  end
end
