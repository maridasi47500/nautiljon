class LivresAnimesController < ApplicationController
  before_action :set__livres_anime, only: %i[ show edit update destroy ]

  # GET /_livres_animes or /_livres_animes.json
  def index
    @_livres_animes = LivresAnime.all
  end

  # GET /_livres_animes/1 or /_livres_animes/1.json
  def show
  end

  # GET /_livres_animes/new
  def new
    @_livres_anime = LivresAnime.new
  end

  # GET /_livres_animes/1/edit
  def edit
  end

  # POST /_livres_animes or /_livres_animes.json
  def create
    @_livres_anime = LivresAnime.new(_livres_anime_params)

    respond_to do |format|
      if @_livres_anime.save
        format.html { redirect_to livres_anime_url(@_livres_anime), notice: "Livres anime was successfully created." }
        format.json { render :show, status: :created, location: @_livres_anime }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_animes/1 or /_livres_animes/1.json
  def update
    respond_to do |format|
      if @_livres_anime.update(_livres_anime_params)
        format.html { redirect_to livres_anime_url(@_livres_anime), notice: "Livres anime was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_anime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_animes/1 or /_livres_animes/1.json
  def destroy
    @_livres_anime.destroy!

    respond_to do |format|
      format.html { redirect_to livres_animes_url, notice: "Livres anime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_anime
      @_livres_anime = LivresAnime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_anime_params
      params.require(:livres_anime).permit(:name)
    end
end
