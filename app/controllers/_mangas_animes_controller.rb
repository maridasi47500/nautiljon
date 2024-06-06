class MangasAnimesController < ApplicationController
  before_action :set__mangas_anime, only: %i[ show edit update destroy ]

  # GET /_mangas_animes or /_mangas_animes.json
  def index
    @_mangas_animes = MangasAnime.all
  end

  # GET /_mangas_animes/1 or /_mangas_animes/1.json
  def show
  end

  # GET /_mangas_animes/new
  def new
    @_mangas_anime = MangasAnime.new
  end

  # GET /_mangas_animes/1/edit
  def edit
  end

  # POST /_mangas_animes or /_mangas_animes.json
  def create
    @_mangas_anime = MangasAnime.new(_mangas_anime_params)

    respond_to do |format|
      if @_mangas_anime.save
        format.html { redirect_to _mangas_anime_url(@_mangas_anime), notice: "Mangas anime was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_anime }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_animes/1 or /_mangas_animes/1.json
  def update
    respond_to do |format|
      if @_mangas_anime.update(_mangas_anime_params)
        format.html { redirect_to _mangas_anime_url(@_mangas_anime), notice: "Mangas anime was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_anime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_animes/1 or /_mangas_animes/1.json
  def destroy
    @_mangas_anime.destroy!

    respond_to do |format|
      format.html { redirect_to _mangas_animes_url, notice: "Mangas anime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_anime
      @_mangas_anime = MangasAnime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_anime_params
      params.require(:_mangas_anime).permit(:name)
    end
end
