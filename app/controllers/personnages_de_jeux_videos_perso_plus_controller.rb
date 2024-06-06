class PersonnagesDeJeuxVideosPersoPlusController < ApplicationController
  before_action :set__personnages_de_jeux_videos_perso_plu, only: %i[ show edit update destroy ]

  # GET /_personnages_de_jeux_videos_perso_plus or /_personnages_de_jeux_videos_perso_plus.json
  def index
    @_personnages_de_jeux_videos_perso_plus = PersonnagesDeJeuxVideosPersoPlu.all
  end

  # GET /_personnages_de_jeux_videos_perso_plus/1 or /_personnages_de_jeux_videos_perso_plus/1.json
  def show
  end

  # GET /_personnages_de_jeux_videos_perso_plus/new
  def new
    @_personnages_de_jeux_videos_perso_plu = PersonnagesDeJeuxVideosPersoPlu.new
  end

  # GET /_personnages_de_jeux_videos_perso_plus/1/edit
  def edit
  end

  # POST /_personnages_de_jeux_videos_perso_plus or /_personnages_de_jeux_videos_perso_plus.json
  def create
    @_personnages_de_jeux_videos_perso_plu = PersonnagesDeJeuxVideosPersoPlu.new(_personnages_de_jeux_videos_perso_plu_params)

    respond_to do |format|
      if @_personnages_de_jeux_videos_perso_plu.save
        format.html { redirect_to personnages_de_jeux_videos_perso_plu_url(@_personnages_de_jeux_videos_perso_plu), notice: "Personnages de jeux videos perso plu was successfully created." }
        format.json { render :show, status: :created, location: @_personnages_de_jeux_videos_perso_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnages_de_jeux_videos_perso_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnages_de_jeux_videos_perso_plus/1 or /_personnages_de_jeux_videos_perso_plus/1.json
  def update
    respond_to do |format|
      if @_personnages_de_jeux_videos_perso_plu.update(_personnages_de_jeux_videos_perso_plu_params)
        format.html { redirect_to personnages_de_jeux_videos_perso_plu_url(@_personnages_de_jeux_videos_perso_plu), notice: "Personnages de jeux videos perso plu was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnages_de_jeux_videos_perso_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnages_de_jeux_videos_perso_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnages_de_jeux_videos_perso_plus/1 or /_personnages_de_jeux_videos_perso_plus/1.json
  def destroy
    @_personnages_de_jeux_videos_perso_plu.destroy!

    respond_to do |format|
      format.html { redirect_to personnages_de_jeux_videos_perso_plus_url, notice: "Personnages de jeux videos perso plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnages_de_jeux_videos_perso_plu
      @_personnages_de_jeux_videos_perso_plu = PersonnagesDeJeuxVideosPersoPlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnages_de_jeux_videos_perso_plu_params
      params.require(:personnages_de_jeux_videos_perso_plu).permit(:name)
    end
end
