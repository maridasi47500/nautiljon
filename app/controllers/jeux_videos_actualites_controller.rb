class JeuxVideosActualitesController < ApplicationController
  before_action :set__jeux_videos_actualite, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_actualites or /_jeux_videos_actualites.json
  def index
    @_jeux_videos_actualites = JeuxVideosActualite.all
  end

  # GET /_jeux_videos_actualites/1 or /_jeux_videos_actualites/1.json
  def show
  end

  # GET /_jeux_videos_actualites/new
  def new
    @_jeux_videos_actualite = JeuxVideosActualite.new
  end

  # GET /_jeux_videos_actualites/1/edit
  def edit
  end

  # POST /_jeux_videos_actualites or /_jeux_videos_actualites.json
  def create
    @_jeux_videos_actualite = JeuxVideosActualite.new(_jeux_videos_actualite_params)

    respond_to do |format|
      if @_jeux_videos_actualite.save
        format.html { redirect_to jeux_videos_actualite_url(@_jeux_videos_actualite), notice: "Jeux videos actualite was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_actualite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_actualites/1 or /_jeux_videos_actualites/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_actualite.update(_jeux_videos_actualite_params)
        format.html { redirect_to jeux_videos_actualite_url(@_jeux_videos_actualite), notice: "Jeux videos actualite was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_actualite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_actualites/1 or /_jeux_videos_actualites/1.json
  def destroy
    @_jeux_videos_actualite.destroy!

    respond_to do |format|
      format.html { redirect_to jeux_videos_actualites_url, notice: "Jeux videos actualite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_actualite
      @_jeux_videos_actualite = JeuxVideosActualite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_actualite_params
      params.require(:jeux_videos_actualite).permit(:name)
    end
end
