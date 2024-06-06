class PersonnagesDeJeuxVideosPersoMangasController < ApplicationController
  before_action :set__personnages_de_jeux_videos_perso_manga, only: %i[ show edit update destroy ]

  # GET /_personnages_de_jeux_videos_perso_mangas or /_personnages_de_jeux_videos_perso_mangas.json
  def index
    @_personnages_de_jeux_videos_perso_mangas = PersonnagesDeJeuxVideosPersoManga.all
  end

  # GET /_personnages_de_jeux_videos_perso_mangas/1 or /_personnages_de_jeux_videos_perso_mangas/1.json
  def show
  end

  # GET /_personnages_de_jeux_videos_perso_mangas/new
  def new
    @_personnages_de_jeux_videos_perso_manga = PersonnagesDeJeuxVideosPersoManga.new
  end

  # GET /_personnages_de_jeux_videos_perso_mangas/1/edit
  def edit
  end

  # POST /_personnages_de_jeux_videos_perso_mangas or /_personnages_de_jeux_videos_perso_mangas.json
  def create
    @_personnages_de_jeux_videos_perso_manga = PersonnagesDeJeuxVideosPersoManga.new(_personnages_de_jeux_videos_perso_manga_params)

    respond_to do |format|
      if @_personnages_de_jeux_videos_perso_manga.save
        format.html { redirect_to personnages_de_jeux_videos_perso_manga_url(@_personnages_de_jeux_videos_perso_manga), notice: "Personnages de jeux videos perso manga was successfully created." }
        format.json { render :show, status: :created, location: @_personnages_de_jeux_videos_perso_manga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnages_de_jeux_videos_perso_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnages_de_jeux_videos_perso_mangas/1 or /_personnages_de_jeux_videos_perso_mangas/1.json
  def update
    respond_to do |format|
      if @_personnages_de_jeux_videos_perso_manga.update(_personnages_de_jeux_videos_perso_manga_params)
        format.html { redirect_to personnages_de_jeux_videos_perso_manga_url(@_personnages_de_jeux_videos_perso_manga), notice: "Personnages de jeux videos perso manga was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnages_de_jeux_videos_perso_manga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnages_de_jeux_videos_perso_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnages_de_jeux_videos_perso_mangas/1 or /_personnages_de_jeux_videos_perso_mangas/1.json
  def destroy
    @_personnages_de_jeux_videos_perso_manga.destroy!

    respond_to do |format|
      format.html { redirect_to personnages_de_jeux_videos_perso_mangas_url, notice: "Personnages de jeux videos perso manga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnages_de_jeux_videos_perso_manga
      @_personnages_de_jeux_videos_perso_manga = PersonnagesDeJeuxVideosPersoManga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnages_de_jeux_videos_perso_manga_params
      params.require(:personnages_de_jeux_videos_perso_manga).permit(:name)
    end
end
