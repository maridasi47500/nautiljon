class FilmsAsiatiquesGenresController < ApplicationController
  before_action :set__films_asiatiques_genre, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_genres or /_films_asiatiques_genres.json
  def index
    @_films_asiatiques_genres = FilmsAsiatiquesGenre.all
  end

  # GET /_films_asiatiques_genres/1 or /_films_asiatiques_genres/1.json
  def show
  end

  # GET /_films_asiatiques_genres/new
  def new
    @_films_asiatiques_genre = FilmsAsiatiquesGenre.new
  end

  # GET /_films_asiatiques_genres/1/edit
  def edit
  end

  # POST /_films_asiatiques_genres or /_films_asiatiques_genres.json
  def create
    @_films_asiatiques_genre = FilmsAsiatiquesGenre.new(_films_asiatiques_genre_params)

    respond_to do |format|
      if @_films_asiatiques_genre.save
        format.html { redirect_to _films_asiatiques_genre_url(@_films_asiatiques_genre), notice: "Films asiatiques genre was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_genre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_genres/1 or /_films_asiatiques_genres/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_genre.update(_films_asiatiques_genre_params)
        format.html { redirect_to _films_asiatiques_genre_url(@_films_asiatiques_genre), notice: "Films asiatiques genre was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_genre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_genres/1 or /_films_asiatiques_genres/1.json
  def destroy
    @_films_asiatiques_genre.destroy!

    respond_to do |format|
      format.html { redirect_to _films_asiatiques_genres_url, notice: "Films asiatiques genre was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_genre
      @_films_asiatiques_genre = FilmsAsiatiquesGenre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_genre_params
      params.require(:_films_asiatiques_genre).permit(:name)
    end
end
