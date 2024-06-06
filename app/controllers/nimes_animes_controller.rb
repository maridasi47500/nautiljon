class AnimesAnimesController < ApplicationController
  before_action :set_animes_anime, only: %i[ show edit update destroy ]

  # GET /animes_animes or /animes_animes.json
  def index
    @animes_animes = AnimesAnime.all
  end

  # GET /animes_animes/1 or /animes_animes/1.json
  def show
  end

  # GET /animes_animes/new
  def new
    @animes_anime = AnimesAnime.new
  end

  # GET /animes_animes/1/edit
  def edit
  end

  # POST /animes_animes or /animes_animes.json
  def create
    @animes_anime = AnimesAnime.new(animes_anime_params)

    respond_to do |format|
      if @animes_anime.save
        format.html { redirect_to animes_anime_url(@animes_anime), notice: "Animes anime was successfully created." }
        format.json { render :show, status: :created, location: @animes_anime }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_animes/1 or /animes_animes/1.json
  def update
    respond_to do |format|
      if @animes_anime.update(animes_anime_params)
        format.html { redirect_to animes_anime_url(@animes_anime), notice: "Animes anime was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_anime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_animes/1 or /animes_animes/1.json
  def destroy
    @animes_anime.destroy!

    respond_to do |format|
      format.html { redirect_to animes_animes_url, notice: "Animes anime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_anime
      @animes_anime = AnimesAnime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_anime_params
      params.require(:animes_anime).permit(:name)
    end
end
