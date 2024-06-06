class CdsMangasController < ApplicationController
  before_action :set__cds_manga, only: %i[ show edit update destroy ]

  # GET /_cds_mangas or /_cds_mangas.json
  def index
    @_cds_mangas = CdsManga.all
  end

  # GET /_cds_mangas/1 or /_cds_mangas/1.json
  def show
  end

  # GET /_cds_mangas/new
  def new
    @_cds_manga = CdsManga.new
  end

  # GET /_cds_mangas/1/edit
  def edit
  end

  # POST /_cds_mangas or /_cds_mangas.json
  def create
    @_cds_manga = CdsManga.new(_cds_manga_params)

    respond_to do |format|
      if @_cds_manga.save
        format.html { redirect_to cds_manga_url(@_cds_manga), notice: "Cds manga was successfully created." }
        format.json { render :show, status: :created, location: @_cds_manga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_cds_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_cds_mangas/1 or /_cds_mangas/1.json
  def update
    respond_to do |format|
      if @_cds_manga.update(_cds_manga_params)
        format.html { redirect_to cds_manga_url(@_cds_manga), notice: "Cds manga was successfully updated." }
        format.json { render :show, status: :ok, location: @_cds_manga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_cds_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_cds_mangas/1 or /_cds_mangas/1.json
  def destroy
    @_cds_manga.destroy!

    respond_to do |format|
      format.html { redirect_to cds_mangas_url, notice: "Cds manga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__cds_manga
      @_cds_manga = CdsManga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _cds_manga_params
      params.require(:cds_manga).permit(:name)
    end
end
