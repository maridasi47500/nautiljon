class DoujinshisAnimesController < ApplicationController
  before_action :set__doujinshis_anime, only: %i[ show edit update destroy ]

  # GET /_doujinshis_animes or /_doujinshis_animes.json
  def index
    @_doujinshis_animes = DoujinshisAnime.all
  end

  # GET /_doujinshis_animes/1 or /_doujinshis_animes/1.json
  def show
  end

  # GET /_doujinshis_animes/new
  def new
    @_doujinshis_anime = DoujinshisAnime.new
  end

  # GET /_doujinshis_animes/1/edit
  def edit
  end

  # POST /_doujinshis_animes or /_doujinshis_animes.json
  def create
    @_doujinshis_anime = DoujinshisAnime.new(_doujinshis_anime_params)

    respond_to do |format|
      if @_doujinshis_anime.save
        format.html { redirect_to doujinshis_anime_url(@_doujinshis_anime), notice: "Doujinshis anime was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_anime }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_animes/1 or /_doujinshis_animes/1.json
  def update
    respond_to do |format|
      if @_doujinshis_anime.update(_doujinshis_anime_params)
        format.html { redirect_to doujinshis_anime_url(@_doujinshis_anime), notice: "Doujinshis anime was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_anime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_animes/1 or /_doujinshis_animes/1.json
  def destroy
    @_doujinshis_anime.destroy!

    respond_to do |format|
      format.html { redirect_to doujinshis_animes_url, notice: "Doujinshis anime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_anime
      @_doujinshis_anime = DoujinshisAnime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_anime_params
      params.require(:doujinshis_anime).permit(:name)
    end
end
