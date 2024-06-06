class DramasMangasController < ApplicationController
  before_action :set__dramas_manga, only: %i[ show edit update destroy ]

  # GET /_dramas_mangas or /_dramas_mangas.json
  def index
    @_dramas_mangas = DramasManga.all
  end

  # GET /_dramas_mangas/1 or /_dramas_mangas/1.json
  def show
  end

  # GET /_dramas_mangas/new
  def new
    @_dramas_manga = DramasManga.new
  end

  # GET /_dramas_mangas/1/edit
  def edit
  end

  # POST /_dramas_mangas or /_dramas_mangas.json
  def create
    @_dramas_manga = DramasManga.new(_dramas_manga_params)

    respond_to do |format|
      if @_dramas_manga.save
        format.html { redirect_to _dramas_manga_url(@_dramas_manga), notice: "Dramas manga was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_manga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_mangas/1 or /_dramas_mangas/1.json
  def update
    respond_to do |format|
      if @_dramas_manga.update(_dramas_manga_params)
        format.html { redirect_to _dramas_manga_url(@_dramas_manga), notice: "Dramas manga was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_manga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_mangas/1 or /_dramas_mangas/1.json
  def destroy
    @_dramas_manga.destroy!

    respond_to do |format|
      format.html { redirect_to _dramas_mangas_url, notice: "Dramas manga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_manga
      @_dramas_manga = DramasManga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_manga_params
      params.require(:_dramas_manga).permit(:name)
    end
end
