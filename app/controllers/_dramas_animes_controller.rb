class DramasAnimesController < ApplicationController
  before_action :set__dramas_anime, only: %i[ show edit update destroy ]

  # GET /_dramas_animes or /_dramas_animes.json
  def index
    @_dramas_animes = DramasAnime.all
  end

  # GET /_dramas_animes/1 or /_dramas_animes/1.json
  def show
  end

  # GET /_dramas_animes/new
  def new
    @_dramas_anime = DramasAnime.new
  end

  # GET /_dramas_animes/1/edit
  def edit
  end

  # POST /_dramas_animes or /_dramas_animes.json
  def create
    @_dramas_anime = DramasAnime.new(_dramas_anime_params)

    respond_to do |format|
      if @_dramas_anime.save
        format.html { redirect_to _dramas_anime_url(@_dramas_anime), notice: "Dramas anime was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_anime }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_animes/1 or /_dramas_animes/1.json
  def update
    respond_to do |format|
      if @_dramas_anime.update(_dramas_anime_params)
        format.html { redirect_to _dramas_anime_url(@_dramas_anime), notice: "Dramas anime was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_anime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_animes/1 or /_dramas_animes/1.json
  def destroy
    @_dramas_anime.destroy!

    respond_to do |format|
      format.html { redirect_to _dramas_animes_url, notice: "Dramas anime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_anime
      @_dramas_anime = DramasAnime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_anime_params
      params.require(:_dramas_anime).permit(:name)
    end
end
