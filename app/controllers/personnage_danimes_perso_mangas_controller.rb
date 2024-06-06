class PersonnageDanimesPersoMangasController < ApplicationController
  before_action :set__personnage_danimes_perso_manga, only: %i[ show edit update destroy ]

  # GET /_personnage_danimes_perso_mangas or /_personnage_danimes_perso_mangas.json
  def index
    @_personnage_danimes_perso_mangas = PersonnageDanimesPersoManga.all
  end

  # GET /_personnage_danimes_perso_mangas/1 or /_personnage_danimes_perso_mangas/1.json
  def show
  end

  # GET /_personnage_danimes_perso_mangas/new
  def new
    @_personnage_danimes_perso_manga = PersonnageDanimesPersoManga.new
  end

  # GET /_personnage_danimes_perso_mangas/1/edit
  def edit
  end

  # POST /_personnage_danimes_perso_mangas or /_personnage_danimes_perso_mangas.json
  def create
    @_personnage_danimes_perso_manga = PersonnageDanimesPersoManga.new(_personnage_danimes_perso_manga_params)

    respond_to do |format|
      if @_personnage_danimes_perso_manga.save
        format.html { redirect_to personnage_danimes_perso_manga_url(@_personnage_danimes_perso_manga), notice: "Personnage danimes perso manga was successfully created." }
        format.json { render :show, status: :created, location: @_personnage_danimes_perso_manga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnage_danimes_perso_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnage_danimes_perso_mangas/1 or /_personnage_danimes_perso_mangas/1.json
  def update
    respond_to do |format|
      if @_personnage_danimes_perso_manga.update(_personnage_danimes_perso_manga_params)
        format.html { redirect_to personnage_danimes_perso_manga_url(@_personnage_danimes_perso_manga), notice: "Personnage danimes perso manga was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnage_danimes_perso_manga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnage_danimes_perso_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnage_danimes_perso_mangas/1 or /_personnage_danimes_perso_mangas/1.json
  def destroy
    @_personnage_danimes_perso_manga.destroy!

    respond_to do |format|
      format.html { redirect_to personnage_danimes_perso_mangas_url, notice: "Personnage danimes perso manga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnage_danimes_perso_manga
      @_personnage_danimes_perso_manga = PersonnageDanimesPersoManga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnage_danimes_perso_manga_params
      params.require(:personnage_danimes_perso_manga).permit(:name)
    end
end
