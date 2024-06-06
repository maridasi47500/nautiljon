class DoujinshisGenresController < ApplicationController
  before_action :set__doujinshis_genre, only: %i[ show edit update destroy ]

  # GET /_doujinshis_genres or /_doujinshis_genres.json
  def index
    @_doujinshis_genres = DoujinshisGenre.all
  end

  # GET /_doujinshis_genres/1 or /_doujinshis_genres/1.json
  def show
  end

  # GET /_doujinshis_genres/new
  def new
    @_doujinshis_genre = DoujinshisGenre.new
  end

  # GET /_doujinshis_genres/1/edit
  def edit
  end

  # POST /_doujinshis_genres or /_doujinshis_genres.json
  def create
    @_doujinshis_genre = DoujinshisGenre.new(_doujinshis_genre_params)

    respond_to do |format|
      if @_doujinshis_genre.save
        format.html { redirect_to doujinshis_genre_url(@_doujinshis_genre), notice: "Doujinshis genre was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_genre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_genres/1 or /_doujinshis_genres/1.json
  def update
    respond_to do |format|
      if @_doujinshis_genre.update(_doujinshis_genre_params)
        format.html { redirect_to doujinshis_genre_url(@_doujinshis_genre), notice: "Doujinshis genre was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_genre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_genres/1 or /_doujinshis_genres/1.json
  def destroy
    @_doujinshis_genre.destroy!

    respond_to do |format|
      format.html { redirect_to doujinshis_genres_url, notice: "Doujinshis genre was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_genre
      @_doujinshis_genre = DoujinshisGenre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_genre_params
      params.require(:doujinshis_genre).permit(:name)
    end
end
