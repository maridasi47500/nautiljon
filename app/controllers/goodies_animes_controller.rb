class GoodiesAnimesController < ApplicationController
  before_action :set__goodies_anime, only: %i[ show edit update destroy ]

  # GET /_goodies_animes or /_goodies_animes.json
  def index
    @_goodies_animes = GoodiesAnime.all
  end

  # GET /_goodies_animes/1 or /_goodies_animes/1.json
  def show
  end

  # GET /_goodies_animes/new
  def new
    @_goodies_anime = GoodiesAnime.new
  end

  # GET /_goodies_animes/1/edit
  def edit
  end

  # POST /_goodies_animes or /_goodies_animes.json
  def create
    @_goodies_anime = GoodiesAnime.new(_goodies_anime_params)

    respond_to do |format|
      if @_goodies_anime.save
        format.html { redirect_to goodies_anime_url(@_goodies_anime), notice: "Goodies anime was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_anime }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_animes/1 or /_goodies_animes/1.json
  def update
    respond_to do |format|
      if @_goodies_anime.update(_goodies_anime_params)
        format.html { redirect_to goodies_anime_url(@_goodies_anime), notice: "Goodies anime was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_anime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_animes/1 or /_goodies_animes/1.json
  def destroy
    @_goodies_anime.destroy!

    respond_to do |format|
      format.html { redirect_to goodies_animes_url, notice: "Goodies anime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_anime
      @_goodies_anime = GoodiesAnime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_anime_params
      params.require(:goodies_anime).permit(:name)
    end
end
