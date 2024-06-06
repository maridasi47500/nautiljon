class ArtbooksAnimesController < ApplicationController
  before_action :set_artbooks_anime, only: %i[ show edit update destroy ]

  # GET /artbooks_animes or /artbooks_animes.json
  def index
    @artbooks_animes = ArtbooksAnime.all
  end

  # GET /artbooks_animes/1 or /artbooks_animes/1.json
  def show
  end

  # GET /artbooks_animes/new
  def new
    @artbooks_anime = ArtbooksAnime.new
  end

  # GET /artbooks_animes/1/edit
  def edit
  end

  # POST /artbooks_animes or /artbooks_animes.json
  def create
    @artbooks_anime = ArtbooksAnime.new(artbooks_anime_params)

    respond_to do |format|
      if @artbooks_anime.save
        format.html { redirect_to artbooks_anime_url(@artbooks_anime), notice: "Artbooks anime was successfully created." }
        format.json { render :show, status: :created, location: @artbooks_anime }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbooks_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks_animes/1 or /artbooks_animes/1.json
  def update
    respond_to do |format|
      if @artbooks_anime.update(artbooks_anime_params)
        format.html { redirect_to artbooks_anime_url(@artbooks_anime), notice: "Artbooks anime was successfully updated." }
        format.json { render :show, status: :ok, location: @artbooks_anime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbooks_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks_animes/1 or /artbooks_animes/1.json
  def destroy
    @artbooks_anime.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_animes_url, notice: "Artbooks anime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbooks_anime
      @artbooks_anime = ArtbooksAnime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbooks_anime_params
      params.require(:artbooks_anime).permit(:name)
    end
end
