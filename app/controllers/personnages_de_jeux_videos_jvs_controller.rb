class PersonnagesDeJeuxVideosJvsController < ApplicationController
  before_action :set__personnages_de_jeux_videos_jv, only: %i[ show edit update destroy ]

  # GET /_personnages_de_jeux_videos_jvs or /_personnages_de_jeux_videos_jvs.json
  def index
    @_personnages_de_jeux_videos_jvs = PersonnagesDeJeuxVideosJv.all
  end

  # GET /_personnages_de_jeux_videos_jvs/1 or /_personnages_de_jeux_videos_jvs/1.json
  def show
  end

  # GET /_personnages_de_jeux_videos_jvs/new
  def new
    @_personnages_de_jeux_videos_jv = PersonnagesDeJeuxVideosJv.new
  end

  # GET /_personnages_de_jeux_videos_jvs/1/edit
  def edit
  end

  # POST /_personnages_de_jeux_videos_jvs or /_personnages_de_jeux_videos_jvs.json
  def create
    @_personnages_de_jeux_videos_jv = PersonnagesDeJeuxVideosJv.new(_personnages_de_jeux_videos_jv_params)

    respond_to do |format|
      if @_personnages_de_jeux_videos_jv.save
        format.html { redirect_to personnages_de_jeux_videos_jv_url(@_personnages_de_jeux_videos_jv), notice: "Personnages de jeux videos jv was successfully created." }
        format.json { render :show, status: :created, location: @_personnages_de_jeux_videos_jv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnages_de_jeux_videos_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnages_de_jeux_videos_jvs/1 or /_personnages_de_jeux_videos_jvs/1.json
  def update
    respond_to do |format|
      if @_personnages_de_jeux_videos_jv.update(_personnages_de_jeux_videos_jv_params)
        format.html { redirect_to personnages_de_jeux_videos_jv_url(@_personnages_de_jeux_videos_jv), notice: "Personnages de jeux videos jv was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnages_de_jeux_videos_jv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnages_de_jeux_videos_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnages_de_jeux_videos_jvs/1 or /_personnages_de_jeux_videos_jvs/1.json
  def destroy
    @_personnages_de_jeux_videos_jv.destroy!

    respond_to do |format|
      format.html { redirect_to personnages_de_jeux_videos_jvs_url, notice: "Personnages de jeux videos jv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnages_de_jeux_videos_jv
      @_personnages_de_jeux_videos_jv = PersonnagesDeJeuxVideosJv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnages_de_jeux_videos_jv_params
      params.require(:personnages_de_jeux_videos_jv).permit(:name)
    end
end
