class LivresGenresController < ApplicationController
  before_action :set__livres_genre, only: %i[ show edit update destroy ]

  # GET /_livres_genres or /_livres_genres.json
  def index
    @_livres_genres = LivresGenre.all
  end

  # GET /_livres_genres/1 or /_livres_genres/1.json
  def show
  end

  # GET /_livres_genres/new
  def new
    @_livres_genre = LivresGenre.new
  end

  # GET /_livres_genres/1/edit
  def edit
  end

  # POST /_livres_genres or /_livres_genres.json
  def create
    @_livres_genre = LivresGenre.new(_livres_genre_params)

    respond_to do |format|
      if @_livres_genre.save
        format.html { redirect_to livres_genre_url(@_livres_genre), notice: "Livres genre was successfully created." }
        format.json { render :show, status: :created, location: @_livres_genre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_genres/1 or /_livres_genres/1.json
  def update
    respond_to do |format|
      if @_livres_genre.update(_livres_genre_params)
        format.html { redirect_to livres_genre_url(@_livres_genre), notice: "Livres genre was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_genre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_genres/1 or /_livres_genres/1.json
  def destroy
    @_livres_genre.destroy!

    respond_to do |format|
      format.html { redirect_to livres_genres_url, notice: "Livres genre was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_genre
      @_livres_genre = LivresGenre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_genre_params
      params.require(:livres_genre).permit(:name)
    end
end
