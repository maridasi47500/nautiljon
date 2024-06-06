class AmvsAnimesController < ApplicationController
  before_action :set_amvs_anime, only: %i[ show edit update destroy ]

  # GET /amvs_animes or /amvs_animes.json
  def index
    @amvs_animes = AmvsAnime.all
  end

  # GET /amvs_animes/1 or /amvs_animes/1.json
  def show
  end

  # GET /amvs_animes/new
  def new
    @amvs_anime = AmvsAnime.new
  end

  # GET /amvs_animes/1/edit
  def edit
  end

  # POST /amvs_animes or /amvs_animes.json
  def create
    @amvs_anime = AmvsAnime.new(amvs_anime_params)

    respond_to do |format|
      if @amvs_anime.save
        format.html { redirect_to amvs_anime_url(@amvs_anime), notice: "Amvs anime was successfully created." }
        format.json { render :show, status: :created, location: @amvs_anime }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @amvs_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amvs_animes/1 or /amvs_animes/1.json
  def update
    respond_to do |format|
      if @amvs_anime.update(amvs_anime_params)
        format.html { redirect_to amvs_anime_url(@amvs_anime), notice: "Amvs anime was successfully updated." }
        format.json { render :show, status: :ok, location: @amvs_anime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @amvs_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amvs_animes/1 or /amvs_animes/1.json
  def destroy
    @amvs_anime.destroy!

    respond_to do |format|
      format.html { redirect_to amvs_animes_url, notice: "Amvs anime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amvs_anime
      @amvs_anime = AmvsAnime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def amvs_anime_params
      params.require(:amvs_anime).permit(:name)
    end
end
