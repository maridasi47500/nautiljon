class PersonnagesDeJeuxVideosController < ApplicationController
  before_action :set__personnages_de_jeux_video, only: %i[ show edit update destroy ]

  # GET /_personnages_de_jeux_videos or /_personnages_de_jeux_videos.json
  def index
    @_personnages_de_jeux_videos = PersonnagesDeJeuxVideo.all
  end

  # GET /_personnages_de_jeux_videos/1 or /_personnages_de_jeux_videos/1.json
  def show
  end

  # GET /_personnages_de_jeux_videos/new
  def new
    @_personnages_de_jeux_video = PersonnagesDeJeuxVideo.new
  end

  # GET /_personnages_de_jeux_videos/1/edit
  def edit
  end

  # POST /_personnages_de_jeux_videos or /_personnages_de_jeux_videos.json
  def create
    @_personnages_de_jeux_video = PersonnagesDeJeuxVideo.new(_personnages_de_jeux_video_params)

    respond_to do |format|
      if @_personnages_de_jeux_video.save
        format.html { redirect_to personnages_de_jeux_video_url(@_personnages_de_jeux_video), notice: "Personnages de jeux video was successfully created." }
        format.json { render :show, status: :created, location: @_personnages_de_jeux_video }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnages_de_jeux_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnages_de_jeux_videos/1 or /_personnages_de_jeux_videos/1.json
  def update
    respond_to do |format|
      if @_personnages_de_jeux_video.update(_personnages_de_jeux_video_params)
        format.html { redirect_to personnages_de_jeux_video_url(@_personnages_de_jeux_video), notice: "Personnages de jeux video was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnages_de_jeux_video }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnages_de_jeux_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnages_de_jeux_videos/1 or /_personnages_de_jeux_videos/1.json
  def destroy
    @_personnages_de_jeux_video.destroy!

    respond_to do |format|
      format.html { redirect_to personnages_de_jeux_videos_url, notice: "Personnages de jeux video was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnages_de_jeux_video
      @_personnages_de_jeux_video = PersonnagesDeJeuxVideo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnages_de_jeux_video_params
      params.require(:personnages_de_jeux_video).permit(:nom, :nom_alternatif, :nom_suite, :nom_original, :_personnages_de_jeux_videos_jv_id, :_personnages_de_jeux_videos_jv_id, :jouable, :jouable, :muet, :_personnages_de_jeux_videos_doubleur_pays_id, :_personnages_de_jeux_videos_doubleur_people_id, :_personnages_de_jeux_videos_doubleur_role_id, :_personnages_de_jeux_videos_doubleur_pays_id, :_personnages_de_jeux_videos_doubleur_people_id, :_personnages_de_jeux_videos_doubleur_role_id, :_personnages_de_jeux_videos_jv_perso_id, :_personnages_de_jeux_videos_perso_id, :_personnages_de_jeux_videos_perso_plus_id, :_personnages_de_jeux_videos_perso_manga_id, :_personnages_de_jeux_videos_goodies_id, :image, :description, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
