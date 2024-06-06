class LightNovelsGenresController < ApplicationController
  before_action :set__light_novels_genre, only: %i[ show edit update destroy ]

  # GET /_light_novels_genres or /_light_novels_genres.json
  def index
    @_light_novels_genres = LightNovelsGenre.all
  end

  # GET /_light_novels_genres/1 or /_light_novels_genres/1.json
  def show
  end

  # GET /_light_novels_genres/new
  def new
    @_light_novels_genre = LightNovelsGenre.new
  end

  # GET /_light_novels_genres/1/edit
  def edit
  end

  # POST /_light_novels_genres or /_light_novels_genres.json
  def create
    @_light_novels_genre = LightNovelsGenre.new(_light_novels_genre_params)

    respond_to do |format|
      if @_light_novels_genre.save
        format.html { redirect_to _light_novels_genre_url(@_light_novels_genre), notice: "Light novels genre was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_genre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_genres/1 or /_light_novels_genres/1.json
  def update
    respond_to do |format|
      if @_light_novels_genre.update(_light_novels_genre_params)
        format.html { redirect_to _light_novels_genre_url(@_light_novels_genre), notice: "Light novels genre was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_genre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_genres/1 or /_light_novels_genres/1.json
  def destroy
    @_light_novels_genre.destroy!

    respond_to do |format|
      format.html { redirect_to _light_novels_genres_url, notice: "Light novels genre was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_genre
      @_light_novels_genre = LightNovelsGenre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_genre_params
      params.require(:_light_novels_genre).permit(:name)
    end
end
