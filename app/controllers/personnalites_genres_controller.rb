class PersonnalitesGenresController < ApplicationController
  before_action :set__personnalites_genre, only: %i[ show edit update destroy ]

  # GET /_personnalites_genres or /_personnalites_genres.json
  def index
    @_personnalites_genres = PersonnalitesGenre.all
  end

  # GET /_personnalites_genres/1 or /_personnalites_genres/1.json
  def show
  end

  # GET /_personnalites_genres/new
  def new
    @_personnalites_genre = PersonnalitesGenre.new
  end

  # GET /_personnalites_genres/1/edit
  def edit
  end

  # POST /_personnalites_genres or /_personnalites_genres.json
  def create
    @_personnalites_genre = PersonnalitesGenre.new(_personnalites_genre_params)

    respond_to do |format|
      if @_personnalites_genre.save
        format.html { redirect_to personnalites_genre_url(@_personnalites_genre), notice: "Personnalites genre was successfully created." }
        format.json { render :show, status: :created, location: @_personnalites_genre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnalites_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnalites_genres/1 or /_personnalites_genres/1.json
  def update
    respond_to do |format|
      if @_personnalites_genre.update(_personnalites_genre_params)
        format.html { redirect_to personnalites_genre_url(@_personnalites_genre), notice: "Personnalites genre was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnalites_genre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnalites_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnalites_genres/1 or /_personnalites_genres/1.json
  def destroy
    @_personnalites_genre.destroy!

    respond_to do |format|
      format.html { redirect_to personnalites_genres_url, notice: "Personnalites genre was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnalites_genre
      @_personnalites_genre = PersonnalitesGenre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnalites_genre_params
      params.require(:personnalites_genre).permit(:name)
    end
end
