class LivresMangasController < ApplicationController
  before_action :set__livres_manga, only: %i[ show edit update destroy ]

  # GET /_livres_mangas or /_livres_mangas.json
  def index
    @_livres_mangas = LivresManga.all
  end

  # GET /_livres_mangas/1 or /_livres_mangas/1.json
  def show
  end

  # GET /_livres_mangas/new
  def new
    @_livres_manga = LivresManga.new
  end

  # GET /_livres_mangas/1/edit
  def edit
  end

  # POST /_livres_mangas or /_livres_mangas.json
  def create
    @_livres_manga = LivresManga.new(_livres_manga_params)

    respond_to do |format|
      if @_livres_manga.save
        format.html { redirect_to livres_manga_url(@_livres_manga), notice: "Livres manga was successfully created." }
        format.json { render :show, status: :created, location: @_livres_manga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_mangas/1 or /_livres_mangas/1.json
  def update
    respond_to do |format|
      if @_livres_manga.update(_livres_manga_params)
        format.html { redirect_to livres_manga_url(@_livres_manga), notice: "Livres manga was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_manga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_mangas/1 or /_livres_mangas/1.json
  def destroy
    @_livres_manga.destroy!

    respond_to do |format|
      format.html { redirect_to livres_mangas_url, notice: "Livres manga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_manga
      @_livres_manga = LivresManga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_manga_params
      params.require(:livres_manga).permit(:name)
    end
end
