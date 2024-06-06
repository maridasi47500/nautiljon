class Dvd::BluRaysAnimesController < ApplicationController
  before_action :set__dvd___blu_rays_anime, only: %i[ show edit update destroy ]

  # GET /_dvd_/_blu_rays_animes or /_dvd_/_blu_rays_animes.json
  def index
    @_dvd___blu_rays_animes = Dvd::BluRaysAnime.all
  end

  # GET /_dvd_/_blu_rays_animes/1 or /_dvd_/_blu_rays_animes/1.json
  def show
  end

  # GET /_dvd_/_blu_rays_animes/new
  def new
    @_dvd___blu_rays_anime = Dvd::BluRaysAnime.new
  end

  # GET /_dvd_/_blu_rays_animes/1/edit
  def edit
  end

  # POST /_dvd_/_blu_rays_animes or /_dvd_/_blu_rays_animes.json
  def create
    @_dvd___blu_rays_anime = Dvd::BluRaysAnime.new(_dvd___blu_rays_anime_params)

    respond_to do |format|
      if @_dvd___blu_rays_anime.save
        format.html { redirect_to _dvd___blu_rays_anime_url(@_dvd___blu_rays_anime), notice: "Blu rays anime was successfully created." }
        format.json { render :show, status: :created, location: @_dvd___blu_rays_anime }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dvd___blu_rays_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dvd_/_blu_rays_animes/1 or /_dvd_/_blu_rays_animes/1.json
  def update
    respond_to do |format|
      if @_dvd___blu_rays_anime.update(_dvd___blu_rays_anime_params)
        format.html { redirect_to _dvd___blu_rays_anime_url(@_dvd___blu_rays_anime), notice: "Blu rays anime was successfully updated." }
        format.json { render :show, status: :ok, location: @_dvd___blu_rays_anime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dvd___blu_rays_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dvd_/_blu_rays_animes/1 or /_dvd_/_blu_rays_animes/1.json
  def destroy
    @_dvd___blu_rays_anime.destroy!

    respond_to do |format|
      format.html { redirect_to _dvd___blu_rays_animes_url, notice: "Blu rays anime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dvd___blu_rays_anime
      @_dvd___blu_rays_anime = Dvd::BluRaysAnime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dvd___blu_rays_anime_params
      params.require(:_dvd___blu_rays_anime).permit(:name)
    end
end
