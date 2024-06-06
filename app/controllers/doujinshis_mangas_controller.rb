class DoujinshisMangasController < ApplicationController
  before_action :set__doujinshis_manga, only: %i[ show edit update destroy ]

  # GET /_doujinshis_mangas or /_doujinshis_mangas.json
  def index
    @_doujinshis_mangas = DoujinshisManga.all
  end

  # GET /_doujinshis_mangas/1 or /_doujinshis_mangas/1.json
  def show
  end

  # GET /_doujinshis_mangas/new
  def new
    @_doujinshis_manga = DoujinshisManga.new
  end

  # GET /_doujinshis_mangas/1/edit
  def edit
  end

  # POST /_doujinshis_mangas or /_doujinshis_mangas.json
  def create
    @_doujinshis_manga = DoujinshisManga.new(_doujinshis_manga_params)

    respond_to do |format|
      if @_doujinshis_manga.save
        format.html { redirect_to doujinshis_manga_url(@_doujinshis_manga), notice: "Doujinshis manga was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_manga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_mangas/1 or /_doujinshis_mangas/1.json
  def update
    respond_to do |format|
      if @_doujinshis_manga.update(_doujinshis_manga_params)
        format.html { redirect_to doujinshis_manga_url(@_doujinshis_manga), notice: "Doujinshis manga was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_manga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_mangas/1 or /_doujinshis_mangas/1.json
  def destroy
    @_doujinshis_manga.destroy!

    respond_to do |format|
      format.html { redirect_to doujinshis_mangas_url, notice: "Doujinshis manga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_manga
      @_doujinshis_manga = DoujinshisManga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_manga_params
      params.require(:doujinshis_manga).permit(:name)
    end
end
