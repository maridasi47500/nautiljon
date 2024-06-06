class LightNovelsController < ApplicationController
  before_action :set__light_novel, only: %i[ show edit update destroy ]

  # GET /_light_novels or /_light_novels.json
  def index
    @_light_novels = LightNovel.all
  end

  # GET /_light_novels/1 or /_light_novels/1.json
  def show
  end

  # GET /_light_novels/new
  def new
    @_light_novel = LightNovel.new
  end

  # GET /_light_novels/1/edit
  def edit
  end

  # POST /_light_novels or /_light_novels.json
  def create
    @_light_novel = LightNovel.new(_light_novel_params)

    respond_to do |format|
      if @_light_novel.save
        format.html { redirect_to light_novel_url(@_light_novel), notice: "Light novel was successfully created." }
        format.json { render :show, status: :created, location: @_light_novel }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels/1 or /_light_novels/1.json
  def update
    respond_to do |format|
      if @_light_novel.update(_light_novel_params)
        format.html { redirect_to light_novel_url(@_light_novel), notice: "Light novel was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novel }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels/1 or /_light_novels/1.json
  def destroy
    @_light_novel.destroy!

    respond_to do |format|
      format.html { redirect_to light_novels_url, notice: "Light novel was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novel
      @_light_novel = LightNovel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novel_params
      params.require(:light_novel).permit(:titre, :titre_alternatif, :titre_alternatif_suite, :titre_original_latin, :titre_original, :image, :image_vo, :_light_novels_pays_id, :_light_novels_pays_id, :_light_novels_genres_id, :_light_novels_genres_id, :webcomic, :_light_novels_themes_id, :_light_novels_themes_id, :annee_vo, :annee_vf, :nb_volumes_vo, :nb_chapitres_vo, :nb_volumes_vf, :nb_chapitres_vf, :_light_novels_encours_vo_id, :_light_novels_encours_vf_id, :_light_novels_editeurs_vo_id, :_light_novels_editeurs_vo_id, :_light_novels_editeurs_vf_id, :_light_novels_editeurs_vf_collection_id, :_light_novels_editeurs_vf_id, :_light_novels_editeurs_vf_collection_id, :_light_novels_prepublie_id, :_light_novels_prepublie_id, :_light_novels_staff_role_id, :_light_novels_staff_people_id, :_light_novels_staff_role_id, :_light_novels_staff_people_id, :_light_novels_societe_role_id, :_light_novels_societe_people_id, :_light_novels_societe_role_id, :_light_novels_societe_people_id, :age, :_light_novels_public_averti_id, :_light_novels_commerce_id, :adapte_anime, :adapte_anime, :adapte_anime, :prix, :resume, :_light_novels_groupes_id, :_light_novels_anime_id, :_light_novels_anime_plus_id, :_light_novels_manga_id, :_light_novels_manga_plus_id, :_light_novels_ln_id, :_light_novels_ln_plus_id, :_light_novels_drama_id, :_light_novels_drama_plus_id, :_light_novels_jv_id, :_light_novels_jv_plus_id, :_light_novels_am_id, :_light_novels_am_plus_id, :_light_novels_litterature_asiatique_id, :_light_novels_litterature_asiatique_plus_id, :_light_novels_ost_id, :_light_novels_artbook_id, :_light_novels_actualite_id, :_light_novels_culture_id, :_light_novels_actualite_mini_id, :_light_novels_quizz_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
