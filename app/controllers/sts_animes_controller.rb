class OstsAnimesController < ApplicationController
  before_action :set_osts_anime, only: %i[ show edit update destroy ]

  # GET /osts_animes or /osts_animes.json
  def index
    @osts_animes = OstsAnime.all
  end

  # GET /osts_animes/1 or /osts_animes/1.json
  def show
  end

  # GET /osts_animes/new
  def new
    @osts_anime = OstsAnime.new
  end

  # GET /osts_animes/1/edit
  def edit
  end

  # POST /osts_animes or /osts_animes.json
  def create
    @osts_anime = OstsAnime.new(osts_anime_params)

    respond_to do |format|
      if @osts_anime.save
        format.html { redirect_to osts_anime_url(@osts_anime), notice: "Osts anime was successfully created." }
        format.json { render :show, status: :created, location: @osts_anime }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @osts_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /osts_animes/1 or /osts_animes/1.json
  def update
    respond_to do |format|
      if @osts_anime.update(osts_anime_params)
        format.html { redirect_to osts_anime_url(@osts_anime), notice: "Osts anime was successfully updated." }
        format.json { render :show, status: :ok, location: @osts_anime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @osts_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /osts_animes/1 or /osts_animes/1.json
  def destroy
    @osts_anime.destroy!

    respond_to do |format|
      format.html { redirect_to osts_animes_url, notice: "Osts anime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_osts_anime
      @osts_anime = OstsAnime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def osts_anime_params
      params.require(:osts_anime).permit(:name)
    end
end
