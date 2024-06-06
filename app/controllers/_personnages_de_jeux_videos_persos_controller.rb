class PersonnagesDeJeuxVideosPersosController < ApplicationController
  before_action :set__personnages_de_jeux_videos_perso, only: %i[ show edit update destroy ]

  # GET /_personnages_de_jeux_videos_persos or /_personnages_de_jeux_videos_persos.json
  def index
    @_personnages_de_jeux_videos_persos = PersonnagesDeJeuxVideosPerso.all
  end

  # GET /_personnages_de_jeux_videos_persos/1 or /_personnages_de_jeux_videos_persos/1.json
  def show
  end

  # GET /_personnages_de_jeux_videos_persos/new
  def new
    @_personnages_de_jeux_videos_perso = PersonnagesDeJeuxVideosPerso.new
  end

  # GET /_personnages_de_jeux_videos_persos/1/edit
  def edit
  end

  # POST /_personnages_de_jeux_videos_persos or /_personnages_de_jeux_videos_persos.json
  def create
    @_personnages_de_jeux_videos_perso = PersonnagesDeJeuxVideosPerso.new(_personnages_de_jeux_videos_perso_params)

    respond_to do |format|
      if @_personnages_de_jeux_videos_perso.save
        format.html { redirect_to _personnages_de_jeux_videos_perso_url(@_personnages_de_jeux_videos_perso), notice: "Personnages de jeux videos perso was successfully created." }
        format.json { render :show, status: :created, location: @_personnages_de_jeux_videos_perso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnages_de_jeux_videos_perso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnages_de_jeux_videos_persos/1 or /_personnages_de_jeux_videos_persos/1.json
  def update
    respond_to do |format|
      if @_personnages_de_jeux_videos_perso.update(_personnages_de_jeux_videos_perso_params)
        format.html { redirect_to _personnages_de_jeux_videos_perso_url(@_personnages_de_jeux_videos_perso), notice: "Personnages de jeux videos perso was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnages_de_jeux_videos_perso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnages_de_jeux_videos_perso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnages_de_jeux_videos_persos/1 or /_personnages_de_jeux_videos_persos/1.json
  def destroy
    @_personnages_de_jeux_videos_perso.destroy!

    respond_to do |format|
      format.html { redirect_to _personnages_de_jeux_videos_persos_url, notice: "Personnages de jeux videos perso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnages_de_jeux_videos_perso
      @_personnages_de_jeux_videos_perso = PersonnagesDeJeuxVideosPerso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnages_de_jeux_videos_perso_params
      params.require(:_personnages_de_jeux_videos_perso).permit(:name)
    end
end
