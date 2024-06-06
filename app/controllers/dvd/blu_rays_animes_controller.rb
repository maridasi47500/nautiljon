class Dvd::BluRaysAnimesController < ApplicationController
  before_action :set__dvd_blu_rays_anime, only: %i[ show edit update destroy ]

  # GET /_dvd_blu_rays_animes or /_dvd_blu_rays_animes.json
  def index
    @_dvd_blu_rays_animes = Dvd::BluRaysAnime.all
  end

  # GET /_dvd_blu_rays_animes/1 or /_dvd_blu_rays_animes/1.json
  def show
  end

  # GET /_dvd_blu_rays_animes/new
  def new
    @_dvd_blu_rays_anime = Dvd::BluRaysAnime.new
  end

  # GET /_dvd_blu_rays_animes/1/edit
  def edit
  end

  # POST /_dvd_blu_rays_animes or /_dvd_blu_rays_animes.json
  def create
    @_dvd_blu_rays_anime = Dvd::BluRaysAnime.new(_dvd_blu_rays_anime_params)

    respond_to do |format|
      if @_dvd_blu_rays_anime.save
        format.html { redirect_to dvd_blu_rays_anime_url(@_dvd_blu_rays_anime), notice: "Blu rays anime was successfully created." }
        format.json { render :show, status: :created, location: @_dvd_blu_rays_anime }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dvd_blu_rays_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dvd_blu_rays_animes/1 or /_dvd_blu_rays_animes/1.json
  def update
    respond_to do |format|
      if @_dvd_blu_rays_anime.update(_dvd_blu_rays_anime_params)
        format.html { redirect_to dvd_blu_rays_anime_url(@_dvd_blu_rays_anime), notice: "Blu rays anime was successfully updated." }
        format.json { render :show, status: :ok, location: @_dvd_blu_rays_anime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dvd_blu_rays_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dvd_blu_rays_animes/1 or /_dvd_blu_rays_animes/1.json
  def destroy
    @_dvd_blu_rays_anime.destroy!

    respond_to do |format|
      format.html { redirect_to dvd_blu_rays_animes_url, notice: "Blu rays anime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dvd_blu_rays_anime
      @_dvd_blu_rays_anime = Dvd::BluRaysAnime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dvd_blu_rays_anime_params
      params.require(:dvd_blu_rays_anime).permit(:name)
    end
end
