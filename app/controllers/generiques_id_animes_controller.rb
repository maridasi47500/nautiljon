class GeneriquesIdAnimesController < ApplicationController
  before_action :set__generiques_id_anime, only: %i[ show edit update destroy ]

  # GET /_generiques_id_animes or /_generiques_id_animes.json
  def index
    @_generiques_id_animes = GeneriquesIdAnime.all
  end

  # GET /_generiques_id_animes/1 or /_generiques_id_animes/1.json
  def show
  end

  # GET /_generiques_id_animes/new
  def new
    @_generiques_id_anime = GeneriquesIdAnime.new
  end

  # GET /_generiques_id_animes/1/edit
  def edit
  end

  # POST /_generiques_id_animes or /_generiques_id_animes.json
  def create
    @_generiques_id_anime = GeneriquesIdAnime.new(_generiques_id_anime_params)

    respond_to do |format|
      if @_generiques_id_anime.save
        format.html { redirect_to _generiques_id_anime_url(@_generiques_id_anime), notice: "Generiques id anime was successfully created." }
        format.json { render :show, status: :created, location: @_generiques_id_anime }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_generiques_id_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_generiques_id_animes/1 or /_generiques_id_animes/1.json
  def update
    respond_to do |format|
      if @_generiques_id_anime.update(_generiques_id_anime_params)
        format.html { redirect_to _generiques_id_anime_url(@_generiques_id_anime), notice: "Generiques id anime was successfully updated." }
        format.json { render :show, status: :ok, location: @_generiques_id_anime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_generiques_id_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_generiques_id_animes/1 or /_generiques_id_animes/1.json
  def destroy
    @_generiques_id_anime.destroy!

    respond_to do |format|
      format.html { redirect_to _generiques_id_animes_url, notice: "Generiques id anime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__generiques_id_anime
      @_generiques_id_anime = GeneriquesIdAnime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _generiques_id_anime_params
      params.require(:_generiques_id_anime).permit(:name)
    end
end
