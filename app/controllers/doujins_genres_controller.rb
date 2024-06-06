class DoujinsGenresController < ApplicationController
  before_action :set__doujins_genre, only: %i[ show edit update destroy ]

  # GET /_doujins_genres or /_doujins_genres.json
  def index
    @_doujins_genres = DoujinsGenre.all
  end

  # GET /_doujins_genres/1 or /_doujins_genres/1.json
  def show
  end

  # GET /_doujins_genres/new
  def new
    @_doujins_genre = DoujinsGenre.new
  end

  # GET /_doujins_genres/1/edit
  def edit
  end

  # POST /_doujins_genres or /_doujins_genres.json
  def create
    @_doujins_genre = DoujinsGenre.new(_doujins_genre_params)

    respond_to do |format|
      if @_doujins_genre.save
        format.html { redirect_to _doujins_genre_url(@_doujins_genre), notice: "Doujins genre was successfully created." }
        format.json { render :show, status: :created, location: @_doujins_genre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujins_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujins_genres/1 or /_doujins_genres/1.json
  def update
    respond_to do |format|
      if @_doujins_genre.update(_doujins_genre_params)
        format.html { redirect_to _doujins_genre_url(@_doujins_genre), notice: "Doujins genre was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujins_genre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujins_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujins_genres/1 or /_doujins_genres/1.json
  def destroy
    @_doujins_genre.destroy!

    respond_to do |format|
      format.html { redirect_to _doujins_genres_url, notice: "Doujins genre was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujins_genre
      @_doujins_genre = DoujinsGenre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujins_genre_params
      params.require(:_doujins_genre).permit(:name)
    end
end
