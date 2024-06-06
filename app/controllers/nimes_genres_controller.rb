class AnimesGenresController < ApplicationController
  before_action :set_animes_genre, only: %i[ show edit update destroy ]

  # GET /animes_genres or /animes_genres.json
  def index
    @animes_genres = AnimesGenre.all
  end

  # GET /animes_genres/1 or /animes_genres/1.json
  def show
  end

  # GET /animes_genres/new
  def new
    @animes_genre = AnimesGenre.new
  end

  # GET /animes_genres/1/edit
  def edit
  end

  # POST /animes_genres or /animes_genres.json
  def create
    @animes_genre = AnimesGenre.new(animes_genre_params)

    respond_to do |format|
      if @animes_genre.save
        format.html { redirect_to animes_genre_url(@animes_genre), notice: "Animes genre was successfully created." }
        format.json { render :show, status: :created, location: @animes_genre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_genres/1 or /animes_genres/1.json
  def update
    respond_to do |format|
      if @animes_genre.update(animes_genre_params)
        format.html { redirect_to animes_genre_url(@animes_genre), notice: "Animes genre was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_genre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_genres/1 or /animes_genres/1.json
  def destroy
    @animes_genre.destroy!

    respond_to do |format|
      format.html { redirect_to animes_genres_url, notice: "Animes genre was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_genre
      @animes_genre = AnimesGenre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_genre_params
      params.require(:animes_genre).permit(:name)
    end
end
