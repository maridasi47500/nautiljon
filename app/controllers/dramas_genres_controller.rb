class DramasGenresController < ApplicationController
  before_action :set__dramas_genre, only: %i[ show edit update destroy ]

  # GET /_dramas_genres or /_dramas_genres.json
  def index
    @_dramas_genres = DramasGenre.all
  end

  # GET /_dramas_genres/1 or /_dramas_genres/1.json
  def show
  end

  # GET /_dramas_genres/new
  def new
    @_dramas_genre = DramasGenre.new
  end

  # GET /_dramas_genres/1/edit
  def edit
  end

  # POST /_dramas_genres or /_dramas_genres.json
  def create
    @_dramas_genre = DramasGenre.new(_dramas_genre_params)

    respond_to do |format|
      if @_dramas_genre.save
        format.html { redirect_to dramas_genre_url(@_dramas_genre), notice: "Dramas genre was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_genre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_genres/1 or /_dramas_genres/1.json
  def update
    respond_to do |format|
      if @_dramas_genre.update(_dramas_genre_params)
        format.html { redirect_to dramas_genre_url(@_dramas_genre), notice: "Dramas genre was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_genre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_genres/1 or /_dramas_genres/1.json
  def destroy
    @_dramas_genre.destroy!

    respond_to do |format|
      format.html { redirect_to dramas_genres_url, notice: "Dramas genre was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_genre
      @_dramas_genre = DramasGenre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_genre_params
      params.require(:dramas_genre).permit(:name)
    end
end
