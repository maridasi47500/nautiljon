class PhotobooksAnimesController < ApplicationController
  before_action :set__photobooks_anime, only: %i[ show edit update destroy ]

  # GET /_photobooks_animes or /_photobooks_animes.json
  def index
    @_photobooks_animes = PhotobooksAnime.all
  end

  # GET /_photobooks_animes/1 or /_photobooks_animes/1.json
  def show
  end

  # GET /_photobooks_animes/new
  def new
    @_photobooks_anime = PhotobooksAnime.new
  end

  # GET /_photobooks_animes/1/edit
  def edit
  end

  # POST /_photobooks_animes or /_photobooks_animes.json
  def create
    @_photobooks_anime = PhotobooksAnime.new(_photobooks_anime_params)

    respond_to do |format|
      if @_photobooks_anime.save
        format.html { redirect_to photobooks_anime_url(@_photobooks_anime), notice: "Photobooks anime was successfully created." }
        format.json { render :show, status: :created, location: @_photobooks_anime }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_photobooks_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_photobooks_animes/1 or /_photobooks_animes/1.json
  def update
    respond_to do |format|
      if @_photobooks_anime.update(_photobooks_anime_params)
        format.html { redirect_to photobooks_anime_url(@_photobooks_anime), notice: "Photobooks anime was successfully updated." }
        format.json { render :show, status: :ok, location: @_photobooks_anime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_photobooks_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_photobooks_animes/1 or /_photobooks_animes/1.json
  def destroy
    @_photobooks_anime.destroy!

    respond_to do |format|
      format.html { redirect_to photobooks_animes_url, notice: "Photobooks anime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__photobooks_anime
      @_photobooks_anime = PhotobooksAnime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _photobooks_anime_params
      params.require(:photobooks_anime).permit(:name)
    end
end
