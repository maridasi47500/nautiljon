class FicheUniversAnimesController < ApplicationController
  before_action :set__fiche_univers_anime, only: %i[ show edit update destroy ]

  # GET /_fiche_univers_animes or /_fiche_univers_animes.json
  def index
    @_fiche_univers_animes = FicheUniversAnime.all
  end

  # GET /_fiche_univers_animes/1 or /_fiche_univers_animes/1.json
  def show
  end

  # GET /_fiche_univers_animes/new
  def new
    @_fiche_univers_anime = FicheUniversAnime.new
  end

  # GET /_fiche_univers_animes/1/edit
  def edit
  end

  # POST /_fiche_univers_animes or /_fiche_univers_animes.json
  def create
    @_fiche_univers_anime = FicheUniversAnime.new(_fiche_univers_anime_params)

    respond_to do |format|
      if @_fiche_univers_anime.save
        format.html { redirect_to fiche_univers_anime_url(@_fiche_univers_anime), notice: "Fiche univers anime was successfully created." }
        format.json { render :show, status: :created, location: @_fiche_univers_anime }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_fiche_univers_animes/1 or /_fiche_univers_animes/1.json
  def update
    respond_to do |format|
      if @_fiche_univers_anime.update(_fiche_univers_anime_params)
        format.html { redirect_to fiche_univers_anime_url(@_fiche_univers_anime), notice: "Fiche univers anime was successfully updated." }
        format.json { render :show, status: :ok, location: @_fiche_univers_anime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_fiche_univers_animes/1 or /_fiche_univers_animes/1.json
  def destroy
    @_fiche_univers_anime.destroy!

    respond_to do |format|
      format.html { redirect_to fiche_univers_animes_url, notice: "Fiche univers anime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__fiche_univers_anime
      @_fiche_univers_anime = FicheUniversAnime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _fiche_univers_anime_params
      params.require(:fiche_univers_anime).permit(:name)
    end
end
