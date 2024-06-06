class LightNovelsAnimesController < ApplicationController
  before_action :set__light_novels_anime, only: %i[ show edit update destroy ]

  # GET /_light_novels_animes or /_light_novels_animes.json
  def index
    @_light_novels_animes = LightNovelsAnime.all
  end

  # GET /_light_novels_animes/1 or /_light_novels_animes/1.json
  def show
  end

  # GET /_light_novels_animes/new
  def new
    @_light_novels_anime = LightNovelsAnime.new
  end

  # GET /_light_novels_animes/1/edit
  def edit
  end

  # POST /_light_novels_animes or /_light_novels_animes.json
  def create
    @_light_novels_anime = LightNovelsAnime.new(_light_novels_anime_params)

    respond_to do |format|
      if @_light_novels_anime.save
        format.html { redirect_to light_novels_anime_url(@_light_novels_anime), notice: "Light novels anime was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_anime }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_animes/1 or /_light_novels_animes/1.json
  def update
    respond_to do |format|
      if @_light_novels_anime.update(_light_novels_anime_params)
        format.html { redirect_to light_novels_anime_url(@_light_novels_anime), notice: "Light novels anime was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_anime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_animes/1 or /_light_novels_animes/1.json
  def destroy
    @_light_novels_anime.destroy!

    respond_to do |format|
      format.html { redirect_to light_novels_animes_url, notice: "Light novels anime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_anime
      @_light_novels_anime = LightNovelsAnime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_anime_params
      params.require(:light_novels_anime).permit(:name)
    end
end
