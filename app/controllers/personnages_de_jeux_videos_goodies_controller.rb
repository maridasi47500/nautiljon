class PersonnagesDeJeuxVideosGoodiesController < ApplicationController
  before_action :set__personnages_de_jeux_videos_goody, only: %i[ show edit update destroy ]

  # GET /_personnages_de_jeux_videos_goodies or /_personnages_de_jeux_videos_goodies.json
  def index
    @_personnages_de_jeux_videos_goodies = PersonnagesDeJeuxVideosGoody.all
  end

  # GET /_personnages_de_jeux_videos_goodies/1 or /_personnages_de_jeux_videos_goodies/1.json
  def show
  end

  # GET /_personnages_de_jeux_videos_goodies/new
  def new
    @_personnages_de_jeux_videos_goody = PersonnagesDeJeuxVideosGoody.new
  end

  # GET /_personnages_de_jeux_videos_goodies/1/edit
  def edit
  end

  # POST /_personnages_de_jeux_videos_goodies or /_personnages_de_jeux_videos_goodies.json
  def create
    @_personnages_de_jeux_videos_goody = PersonnagesDeJeuxVideosGoody.new(_personnages_de_jeux_videos_goody_params)

    respond_to do |format|
      if @_personnages_de_jeux_videos_goody.save
        format.html { redirect_to personnages_de_jeux_videos_goody_url(@_personnages_de_jeux_videos_goody), notice: "Personnages de jeux videos goody was successfully created." }
        format.json { render :show, status: :created, location: @_personnages_de_jeux_videos_goody }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnages_de_jeux_videos_goody.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnages_de_jeux_videos_goodies/1 or /_personnages_de_jeux_videos_goodies/1.json
  def update
    respond_to do |format|
      if @_personnages_de_jeux_videos_goody.update(_personnages_de_jeux_videos_goody_params)
        format.html { redirect_to personnages_de_jeux_videos_goody_url(@_personnages_de_jeux_videos_goody), notice: "Personnages de jeux videos goody was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnages_de_jeux_videos_goody }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnages_de_jeux_videos_goody.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnages_de_jeux_videos_goodies/1 or /_personnages_de_jeux_videos_goodies/1.json
  def destroy
    @_personnages_de_jeux_videos_goody.destroy!

    respond_to do |format|
      format.html { redirect_to personnages_de_jeux_videos_goodies_url, notice: "Personnages de jeux videos goody was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnages_de_jeux_videos_goody
      @_personnages_de_jeux_videos_goody = PersonnagesDeJeuxVideosGoody.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnages_de_jeux_videos_goody_params
      params.require(:personnages_de_jeux_videos_goody).permit(:name)
    end
end
