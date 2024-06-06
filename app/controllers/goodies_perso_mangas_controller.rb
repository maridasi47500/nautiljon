class GoodiesPersoMangasController < ApplicationController
  before_action :set__goodies_perso_manga, only: %i[ show edit update destroy ]

  # GET /_goodies_perso_mangas or /_goodies_perso_mangas.json
  def index
    @_goodies_perso_mangas = GoodiesPersoManga.all
  end

  # GET /_goodies_perso_mangas/1 or /_goodies_perso_mangas/1.json
  def show
  end

  # GET /_goodies_perso_mangas/new
  def new
    @_goodies_perso_manga = GoodiesPersoManga.new
  end

  # GET /_goodies_perso_mangas/1/edit
  def edit
  end

  # POST /_goodies_perso_mangas or /_goodies_perso_mangas.json
  def create
    @_goodies_perso_manga = GoodiesPersoManga.new(_goodies_perso_manga_params)

    respond_to do |format|
      if @_goodies_perso_manga.save
        format.html { redirect_to goodies_perso_manga_url(@_goodies_perso_manga), notice: "Goodies perso manga was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_perso_manga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_perso_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_perso_mangas/1 or /_goodies_perso_mangas/1.json
  def update
    respond_to do |format|
      if @_goodies_perso_manga.update(_goodies_perso_manga_params)
        format.html { redirect_to goodies_perso_manga_url(@_goodies_perso_manga), notice: "Goodies perso manga was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_perso_manga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_perso_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_perso_mangas/1 or /_goodies_perso_mangas/1.json
  def destroy
    @_goodies_perso_manga.destroy!

    respond_to do |format|
      format.html { redirect_to goodies_perso_mangas_url, notice: "Goodies perso manga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_perso_manga
      @_goodies_perso_manga = GoodiesPersoManga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_perso_manga_params
      params.require(:goodies_perso_manga).permit(:name)
    end
end
