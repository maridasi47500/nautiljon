class JeuxVideosPlateformesController < ApplicationController
  before_action :set__jeux_videos_plateforme, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_plateformes or /_jeux_videos_plateformes.json
  def index
    @_jeux_videos_plateformes = JeuxVideosPlateforme.all
  end

  # GET /_jeux_videos_plateformes/1 or /_jeux_videos_plateformes/1.json
  def show
  end

  # GET /_jeux_videos_plateformes/new
  def new
    @_jeux_videos_plateforme = JeuxVideosPlateforme.new
  end

  # GET /_jeux_videos_plateformes/1/edit
  def edit
  end

  # POST /_jeux_videos_plateformes or /_jeux_videos_plateformes.json
  def create
    @_jeux_videos_plateforme = JeuxVideosPlateforme.new(_jeux_videos_plateforme_params)

    respond_to do |format|
      if @_jeux_videos_plateforme.save
        format.html { redirect_to jeux_videos_plateforme_url(@_jeux_videos_plateforme), notice: "Jeux videos plateforme was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_plateforme }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_plateforme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_plateformes/1 or /_jeux_videos_plateformes/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_plateforme.update(_jeux_videos_plateforme_params)
        format.html { redirect_to jeux_videos_plateforme_url(@_jeux_videos_plateforme), notice: "Jeux videos plateforme was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_plateforme }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_plateforme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_plateformes/1 or /_jeux_videos_plateformes/1.json
  def destroy
    @_jeux_videos_plateforme.destroy!

    respond_to do |format|
      format.html { redirect_to jeux_videos_plateformes_url, notice: "Jeux videos plateforme was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_plateforme
      @_jeux_videos_plateforme = JeuxVideosPlateforme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_plateforme_params
      params.require(:jeux_videos_plateforme).permit(:name)
    end
end
