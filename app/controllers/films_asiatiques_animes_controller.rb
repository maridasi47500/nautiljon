class FilmsAsiatiquesAnimesController < ApplicationController
  before_action :set__films_asiatiques_anime, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_animes or /_films_asiatiques_animes.json
  def index
    @_films_asiatiques_animes = FilmsAsiatiquesAnime.all
  end

  # GET /_films_asiatiques_animes/1 or /_films_asiatiques_animes/1.json
  def show
  end

  # GET /_films_asiatiques_animes/new
  def new
    @_films_asiatiques_anime = FilmsAsiatiquesAnime.new
  end

  # GET /_films_asiatiques_animes/1/edit
  def edit
  end

  # POST /_films_asiatiques_animes or /_films_asiatiques_animes.json
  def create
    @_films_asiatiques_anime = FilmsAsiatiquesAnime.new(_films_asiatiques_anime_params)

    respond_to do |format|
      if @_films_asiatiques_anime.save
        format.html { redirect_to films_asiatiques_anime_url(@_films_asiatiques_anime), notice: "Films asiatiques anime was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_anime }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_animes/1 or /_films_asiatiques_animes/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_anime.update(_films_asiatiques_anime_params)
        format.html { redirect_to films_asiatiques_anime_url(@_films_asiatiques_anime), notice: "Films asiatiques anime was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_anime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_animes/1 or /_films_asiatiques_animes/1.json
  def destroy
    @_films_asiatiques_anime.destroy!

    respond_to do |format|
      format.html { redirect_to films_asiatiques_animes_url, notice: "Films asiatiques anime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_anime
      @_films_asiatiques_anime = FilmsAsiatiquesAnime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_anime_params
      params.require(:films_asiatiques_anime).permit(:name)
    end
end
