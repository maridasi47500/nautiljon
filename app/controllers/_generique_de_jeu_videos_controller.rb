class GeneriqueDeJeuVideosController < ApplicationController
  before_action :set__generique_de_jeu_video, only: %i[ show edit update destroy ]

  # GET /_generique_de_jeu_videos or /_generique_de_jeu_videos.json
  def index
    @_generique_de_jeu_videos = GeneriqueDeJeuVideo.all
  end

  # GET /_generique_de_jeu_videos/1 or /_generique_de_jeu_videos/1.json
  def show
  end

  # GET /_generique_de_jeu_videos/new
  def new
    @_generique_de_jeu_video = GeneriqueDeJeuVideo.new
  end

  # GET /_generique_de_jeu_videos/1/edit
  def edit
  end

  # POST /_generique_de_jeu_videos or /_generique_de_jeu_videos.json
  def create
    @_generique_de_jeu_video = GeneriqueDeJeuVideo.new(_generique_de_jeu_video_params)

    respond_to do |format|
      if @_generique_de_jeu_video.save
        format.html { redirect_to _generique_de_jeu_video_url(@_generique_de_jeu_video), notice: "Generique de jeu video was successfully created." }
        format.json { render :show, status: :created, location: @_generique_de_jeu_video }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_generique_de_jeu_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_generique_de_jeu_videos/1 or /_generique_de_jeu_videos/1.json
  def update
    respond_to do |format|
      if @_generique_de_jeu_video.update(_generique_de_jeu_video_params)
        format.html { redirect_to _generique_de_jeu_video_url(@_generique_de_jeu_video), notice: "Generique de jeu video was successfully updated." }
        format.json { render :show, status: :ok, location: @_generique_de_jeu_video }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_generique_de_jeu_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_generique_de_jeu_videos/1 or /_generique_de_jeu_videos/1.json
  def destroy
    @_generique_de_jeu_video.destroy!

    respond_to do |format|
      format.html { redirect_to _generique_de_jeu_videos_url, notice: "Generique de jeu video was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__generique_de_jeu_video
      @_generique_de_jeu_video = GeneriqueDeJeuVideo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _generique_de_jeu_video_params
      params.require(:_generique_de_jeu_video).permit(:titre, :titre_original, :_generique_de_jeu_videos_type_id, :number, :_generique_de_jeu_videos_staff_role_id, :_generique_de_jeu_videos_staff_people_id, :_generique_de_jeu_videos_staff_role_id, :_generique_de_jeu_videos_staff_people_id, :description, :instrumental, :instrumental, :date_jj, :date_mm, :date_aaaa, :youtube, :paroles, :paroles_trad, :membre_show, :membre_show, :_generique_de_jeu_videos_jv_id, :_generique_de_jeu_videos_jv_generic_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
