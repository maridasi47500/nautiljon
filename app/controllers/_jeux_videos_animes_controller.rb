class JeuxVideosAnimesController < ApplicationController
  before_action :set__jeux_videos_anime, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_animes or /_jeux_videos_animes.json
  def index
    @_jeux_videos_animes = JeuxVideosAnime.all
  end

  # GET /_jeux_videos_animes/1 or /_jeux_videos_animes/1.json
  def show
  end

  # GET /_jeux_videos_animes/new
  def new
    @_jeux_videos_anime = JeuxVideosAnime.new
  end

  # GET /_jeux_videos_animes/1/edit
  def edit
  end

  # POST /_jeux_videos_animes or /_jeux_videos_animes.json
  def create
    @_jeux_videos_anime = JeuxVideosAnime.new(_jeux_videos_anime_params)

    respond_to do |format|
      if @_jeux_videos_anime.save
        format.html { redirect_to _jeux_videos_anime_url(@_jeux_videos_anime), notice: "Jeux videos anime was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_anime }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_animes/1 or /_jeux_videos_animes/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_anime.update(_jeux_videos_anime_params)
        format.html { redirect_to _jeux_videos_anime_url(@_jeux_videos_anime), notice: "Jeux videos anime was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_anime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_animes/1 or /_jeux_videos_animes/1.json
  def destroy
    @_jeux_videos_anime.destroy!

    respond_to do |format|
      format.html { redirect_to _jeux_videos_animes_url, notice: "Jeux videos anime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_anime
      @_jeux_videos_anime = JeuxVideosAnime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_anime_params
      params.require(:_jeux_videos_anime).permit(:name)
    end
end
