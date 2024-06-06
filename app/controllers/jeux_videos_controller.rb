class JeuxVideosController < ApplicationController
  before_action :set__jeux_video, only: %i[ show edit update destroy ]

  # GET /_jeux_videos or /_jeux_videos.json
  def index
    @_jeux_videos = JeuxVideo.all
  end

  # GET /_jeux_videos/1 or /_jeux_videos/1.json
  def show
  end

  # GET /_jeux_videos/new
  def new
    @_jeux_video = JeuxVideo.new
  end

  # GET /_jeux_videos/1/edit
  def edit
  end

  # POST /_jeux_videos or /_jeux_videos.json
  def create
    @_jeux_video = JeuxVideo.new(_jeux_video_params)

    respond_to do |format|
      if @_jeux_video.save
        format.html { redirect_to _jeux_video_url(@_jeux_video), notice: "Jeux video was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_video }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos/1 or /_jeux_videos/1.json
  def update
    respond_to do |format|
      if @_jeux_video.update(_jeux_video_params)
        format.html { redirect_to _jeux_video_url(@_jeux_video), notice: "Jeux video was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_video }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos/1 or /_jeux_videos/1.json
  def destroy
    @_jeux_video.destroy!

    respond_to do |format|
      format.html { redirect_to _jeux_videos_url, notice: "Jeux video was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_video
      @_jeux_video = JeuxVideo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_video_params
      params.require(:_jeux_video).permit(:titre_fr, :titre_original_latin, :titre_us, :titre_alternatif, :titre_original, :_jeux_videos_plateforme_id, :date_fr_jj, :date_fr_mm, :date_fr_aaaa, :_jeux_videos_pays_date_id, :date_originale_jj, :date_originale_mm, :date_originale_aaaa, :date_us_jj, :date_us_mm, :date_us_aaaa, :date_jap_jj, :date_jap_mm, :date_jap_aaaa, :_jeux_videos_pays_id, :_jeux_videos_pays_id, :_jeux_videos_etat_id, :prix, :ean, :_jeux_videos_themes_id, :_jeux_videos_themes_id, :_jeux_videos_genres_id, :_jeux_videos_genres_id, :multi, :multi, :multi_nb, :online, :online, :age, :site, :pochette_eu, :pochette_asie, :pochette_us, :_jeux_videos_staff_societe_role_id, :_jeux_videos_staff_societe_id, :_jeux_videos_staff_societe_role_id, :_jeux_videos_staff_societe_id, :_jeux_videos_staff_role_id, :_jeux_videos_staff_people_id, :description, :youtube, :_jeux_videos_groupes_id, :_jeux_videos_actualite_id, :_jeux_videos_actualite_mini_id, :_jeux_videos_anime_id, :_jeux_videos_anime_plus_id, :_jeux_videos_ln_id, :_jeux_videos_ln_plus_id, :_jeux_videos_manga_id, :_jeux_videos_manga_plus_id, :_jeux_videos_jv_id, :_jeux_videos_jv_plus_id, :_jeux_videos_am_id, :_jeux_videos_am_plus_id, :_jeux_videos_drama_id, :_jeux_videos_drama_plus_id, :_jeux_videos_univers_id, :_jeux_videos_dvd_id, :_jeux_videos_artbook_id, :_jeux_videos_litterature_asiatique_id, :_jeux_videos_litterature_asiatique_plus_id, :_jeux_videos_culture_id, :_jeux_videos_ost_id, :_jeux_videos_cd_id, :_jeux_videos_doujin_id, :_jeux_videos_amv_id, :_jeux_videos_sondage_id, :_jeux_videos_quizz_id, :_jeux_videos_concours_id, :_jeux_videos_people_id, :_jeux_videos_topic_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
