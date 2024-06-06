class PersonnageDeMangasController < ApplicationController
  before_action :set__personnage_de_manga, only: %i[ show edit update destroy ]

  # GET /_personnage_de_mangas or /_personnage_de_mangas.json
  def index
    @_personnage_de_mangas = PersonnageDeManga.all
  end

  # GET /_personnage_de_mangas/1 or /_personnage_de_mangas/1.json
  def show
  end

  # GET /_personnage_de_mangas/new
  def new
    @_personnage_de_manga = PersonnageDeManga.new
  end

  # GET /_personnage_de_mangas/1/edit
  def edit
  end

  # POST /_personnage_de_mangas or /_personnage_de_mangas.json
  def create
    @_personnage_de_manga = PersonnageDeManga.new(_personnage_de_manga_params)

    respond_to do |format|
      if @_personnage_de_manga.save
        format.html { redirect_to _personnage_de_manga_url(@_personnage_de_manga), notice: "Personnage de manga was successfully created." }
        format.json { render :show, status: :created, location: @_personnage_de_manga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnage_de_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnage_de_mangas/1 or /_personnage_de_mangas/1.json
  def update
    respond_to do |format|
      if @_personnage_de_manga.update(_personnage_de_manga_params)
        format.html { redirect_to _personnage_de_manga_url(@_personnage_de_manga), notice: "Personnage de manga was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnage_de_manga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnage_de_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnage_de_mangas/1 or /_personnage_de_mangas/1.json
  def destroy
    @_personnage_de_manga.destroy!

    respond_to do |format|
      format.html { redirect_to _personnage_de_mangas_url, notice: "Personnage de manga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnage_de_manga
      @_personnage_de_manga = PersonnageDeManga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnage_de_manga_params
      params.require(:_personnage_de_manga).permit(:nom, :nom_alternatif, :nom_suite, :nom_original, :_personnage_de_mangas_manga_id, :_personnage_de_mangas_manga_id, :image, :description, :_personnage_de_mangas_perso_manga_id, :_personnage_de_mangas_perso_id, :_personnage_de_mangas_perso_plus_id, :_personnage_de_mangas_jv_perso_id, :_personnage_de_mangas_goodies_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
