class JeuxVideosGenresController < ApplicationController
  before_action :set__jeux_videos_genre, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_genres or /_jeux_videos_genres.json
  def index
    @_jeux_videos_genres = JeuxVideosGenre.all
  end

  # GET /_jeux_videos_genres/1 or /_jeux_videos_genres/1.json
  def show
  end

  # GET /_jeux_videos_genres/new
  def new
    @_jeux_videos_genre = JeuxVideosGenre.new
  end

  # GET /_jeux_videos_genres/1/edit
  def edit
  end

  # POST /_jeux_videos_genres or /_jeux_videos_genres.json
  def create
    @_jeux_videos_genre = JeuxVideosGenre.new(_jeux_videos_genre_params)

    respond_to do |format|
      if @_jeux_videos_genre.save
        format.html { redirect_to jeux_videos_genre_url(@_jeux_videos_genre), notice: "Jeux videos genre was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_genre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_genres/1 or /_jeux_videos_genres/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_genre.update(_jeux_videos_genre_params)
        format.html { redirect_to jeux_videos_genre_url(@_jeux_videos_genre), notice: "Jeux videos genre was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_genre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_genres/1 or /_jeux_videos_genres/1.json
  def destroy
    @_jeux_videos_genre.destroy!

    respond_to do |format|
      format.html { redirect_to jeux_videos_genres_url, notice: "Jeux videos genre was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_genre
      @_jeux_videos_genre = JeuxVideosGenre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_genre_params
      params.require(:jeux_videos_genre).permit(:name)
    end
end
