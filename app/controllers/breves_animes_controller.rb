class BrevesAnimesController < ApplicationController
  before_action :set__breves_anime, only: %i[ show edit update destroy ]

  # GET /_breves_animes or /_breves_animes.json
  def index
    @_breves_animes = BrevesAnime.all
  end

  # GET /_breves_animes/1 or /_breves_animes/1.json
  def show
  end

  # GET /_breves_animes/new
  def new
    @_breves_anime = BrevesAnime.new
  end

  # GET /_breves_animes/1/edit
  def edit
  end

  # POST /_breves_animes or /_breves_animes.json
  def create
    @_breves_anime = BrevesAnime.new(_breves_anime_params)

    respond_to do |format|
      if @_breves_anime.save
        format.html { redirect_to breves_anime_url(@_breves_anime), notice: "Breves anime was successfully created." }
        format.json { render :show, status: :created, location: @_breves_anime }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_animes/1 or /_breves_animes/1.json
  def update
    respond_to do |format|
      if @_breves_anime.update(_breves_anime_params)
        format.html { redirect_to breves_anime_url(@_breves_anime), notice: "Breves anime was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_anime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_animes/1 or /_breves_animes/1.json
  def destroy
    @_breves_anime.destroy!

    respond_to do |format|
      format.html { redirect_to breves_animes_url, notice: "Breves anime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_anime
      @_breves_anime = BrevesAnime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_anime_params
      params.require(:breves_anime).permit(:name)
    end
end
