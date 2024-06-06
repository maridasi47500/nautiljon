class FilmsAsiatiquesEnSallesGenresController < ApplicationController
  before_action :set__films_asiatiques_en_salles_genre, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_en_salles_genres or /_films_asiatiques_en_salles_genres.json
  def index
    @_films_asiatiques_en_salles_genres = FilmsAsiatiquesEnSallesGenre.all
  end

  # GET /_films_asiatiques_en_salles_genres/1 or /_films_asiatiques_en_salles_genres/1.json
  def show
  end

  # GET /_films_asiatiques_en_salles_genres/new
  def new
    @_films_asiatiques_en_salles_genre = FilmsAsiatiquesEnSallesGenre.new
  end

  # GET /_films_asiatiques_en_salles_genres/1/edit
  def edit
  end

  # POST /_films_asiatiques_en_salles_genres or /_films_asiatiques_en_salles_genres.json
  def create
    @_films_asiatiques_en_salles_genre = FilmsAsiatiquesEnSallesGenre.new(_films_asiatiques_en_salles_genre_params)

    respond_to do |format|
      if @_films_asiatiques_en_salles_genre.save
        format.html { redirect_to films_asiatiques_en_salles_genre_url(@_films_asiatiques_en_salles_genre), notice: "Films asiatiques en salles genre was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_en_salles_genre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_en_salles_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_en_salles_genres/1 or /_films_asiatiques_en_salles_genres/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_en_salles_genre.update(_films_asiatiques_en_salles_genre_params)
        format.html { redirect_to films_asiatiques_en_salles_genre_url(@_films_asiatiques_en_salles_genre), notice: "Films asiatiques en salles genre was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_en_salles_genre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_en_salles_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_en_salles_genres/1 or /_films_asiatiques_en_salles_genres/1.json
  def destroy
    @_films_asiatiques_en_salles_genre.destroy!

    respond_to do |format|
      format.html { redirect_to films_asiatiques_en_salles_genres_url, notice: "Films asiatiques en salles genre was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_en_salles_genre
      @_films_asiatiques_en_salles_genre = FilmsAsiatiquesEnSallesGenre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_en_salles_genre_params
      params.require(:films_asiatiques_en_salles_genre).permit(:name)
    end
end
