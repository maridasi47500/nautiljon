class DoujinsAnimesController < ApplicationController
  before_action :set__doujins_anime, only: %i[ show edit update destroy ]

  # GET /_doujins_animes or /_doujins_animes.json
  def index
    @_doujins_animes = DoujinsAnime.all
  end

  # GET /_doujins_animes/1 or /_doujins_animes/1.json
  def show
  end

  # GET /_doujins_animes/new
  def new
    @_doujins_anime = DoujinsAnime.new
  end

  # GET /_doujins_animes/1/edit
  def edit
  end

  # POST /_doujins_animes or /_doujins_animes.json
  def create
    @_doujins_anime = DoujinsAnime.new(_doujins_anime_params)

    respond_to do |format|
      if @_doujins_anime.save
        format.html { redirect_to _doujins_anime_url(@_doujins_anime), notice: "Doujins anime was successfully created." }
        format.json { render :show, status: :created, location: @_doujins_anime }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujins_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujins_animes/1 or /_doujins_animes/1.json
  def update
    respond_to do |format|
      if @_doujins_anime.update(_doujins_anime_params)
        format.html { redirect_to _doujins_anime_url(@_doujins_anime), notice: "Doujins anime was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujins_anime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujins_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujins_animes/1 or /_doujins_animes/1.json
  def destroy
    @_doujins_anime.destroy!

    respond_to do |format|
      format.html { redirect_to _doujins_animes_url, notice: "Doujins anime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujins_anime
      @_doujins_anime = DoujinsAnime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujins_anime_params
      params.require(:_doujins_anime).permit(:name)
    end
end
