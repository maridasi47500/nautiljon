class CdsAnimesController < ApplicationController
  before_action :set__cds_anime, only: %i[ show edit update destroy ]

  # GET /_cds_animes or /_cds_animes.json
  def index
    @_cds_animes = CdsAnime.all
  end

  # GET /_cds_animes/1 or /_cds_animes/1.json
  def show
  end

  # GET /_cds_animes/new
  def new
    @_cds_anime = CdsAnime.new
  end

  # GET /_cds_animes/1/edit
  def edit
  end

  # POST /_cds_animes or /_cds_animes.json
  def create
    @_cds_anime = CdsAnime.new(_cds_anime_params)

    respond_to do |format|
      if @_cds_anime.save
        format.html { redirect_to _cds_anime_url(@_cds_anime), notice: "Cds anime was successfully created." }
        format.json { render :show, status: :created, location: @_cds_anime }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_cds_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_cds_animes/1 or /_cds_animes/1.json
  def update
    respond_to do |format|
      if @_cds_anime.update(_cds_anime_params)
        format.html { redirect_to _cds_anime_url(@_cds_anime), notice: "Cds anime was successfully updated." }
        format.json { render :show, status: :ok, location: @_cds_anime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_cds_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_cds_animes/1 or /_cds_animes/1.json
  def destroy
    @_cds_anime.destroy!

    respond_to do |format|
      format.html { redirect_to _cds_animes_url, notice: "Cds anime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__cds_anime
      @_cds_anime = CdsAnime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _cds_anime_params
      params.require(:_cds_anime).permit(:name)
    end
end
