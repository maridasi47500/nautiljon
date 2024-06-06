class MangasGenresController < ApplicationController
  before_action :set__mangas_genre, only: %i[ show edit update destroy ]

  # GET /_mangas_genres or /_mangas_genres.json
  def index
    @_mangas_genres = MangasGenre.all
  end

  # GET /_mangas_genres/1 or /_mangas_genres/1.json
  def show
  end

  # GET /_mangas_genres/new
  def new
    @_mangas_genre = MangasGenre.new
  end

  # GET /_mangas_genres/1/edit
  def edit
  end

  # POST /_mangas_genres or /_mangas_genres.json
  def create
    @_mangas_genre = MangasGenre.new(_mangas_genre_params)

    respond_to do |format|
      if @_mangas_genre.save
        format.html { redirect_to mangas_genre_url(@_mangas_genre), notice: "Mangas genre was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_genre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_genres/1 or /_mangas_genres/1.json
  def update
    respond_to do |format|
      if @_mangas_genre.update(_mangas_genre_params)
        format.html { redirect_to mangas_genre_url(@_mangas_genre), notice: "Mangas genre was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_genre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_genres/1 or /_mangas_genres/1.json
  def destroy
    @_mangas_genre.destroy!

    respond_to do |format|
      format.html { redirect_to mangas_genres_url, notice: "Mangas genre was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_genre
      @_mangas_genre = MangasGenre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_genre_params
      params.require(:mangas_genre).permit(:name)
    end
end
