class PersonnageDanimesAnimesController < ApplicationController
  before_action :set__personnage_danimes_anime, only: %i[ show edit update destroy ]

  # GET /_personnage_danimes_animes or /_personnage_danimes_animes.json
  def index
    @_personnage_danimes_animes = PersonnageDanimesAnime.all
  end

  # GET /_personnage_danimes_animes/1 or /_personnage_danimes_animes/1.json
  def show
  end

  # GET /_personnage_danimes_animes/new
  def new
    @_personnage_danimes_anime = PersonnageDanimesAnime.new
  end

  # GET /_personnage_danimes_animes/1/edit
  def edit
  end

  # POST /_personnage_danimes_animes or /_personnage_danimes_animes.json
  def create
    @_personnage_danimes_anime = PersonnageDanimesAnime.new(_personnage_danimes_anime_params)

    respond_to do |format|
      if @_personnage_danimes_anime.save
        format.html { redirect_to _personnage_danimes_anime_url(@_personnage_danimes_anime), notice: "Personnage danimes anime was successfully created." }
        format.json { render :show, status: :created, location: @_personnage_danimes_anime }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnage_danimes_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnage_danimes_animes/1 or /_personnage_danimes_animes/1.json
  def update
    respond_to do |format|
      if @_personnage_danimes_anime.update(_personnage_danimes_anime_params)
        format.html { redirect_to _personnage_danimes_anime_url(@_personnage_danimes_anime), notice: "Personnage danimes anime was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnage_danimes_anime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnage_danimes_anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnage_danimes_animes/1 or /_personnage_danimes_animes/1.json
  def destroy
    @_personnage_danimes_anime.destroy!

    respond_to do |format|
      format.html { redirect_to _personnage_danimes_animes_url, notice: "Personnage danimes anime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnage_danimes_anime
      @_personnage_danimes_anime = PersonnageDanimesAnime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnage_danimes_anime_params
      params.require(:_personnage_danimes_anime).permit(:name)
    end
end
