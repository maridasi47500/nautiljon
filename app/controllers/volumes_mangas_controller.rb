class VolumesMangasController < ApplicationController
  before_action :set__volumes_manga, only: %i[ show edit update destroy ]

  # GET /_volumes_mangas or /_volumes_mangas.json
  def index
    @_volumes_mangas = VolumesManga.all
  end

  # GET /_volumes_mangas/1 or /_volumes_mangas/1.json
  def show
  end

  # GET /_volumes_mangas/new
  def new
    @_volumes_manga = VolumesManga.new
  end

  # GET /_volumes_mangas/1/edit
  def edit
  end

  # POST /_volumes_mangas or /_volumes_mangas.json
  def create
    @_volumes_manga = VolumesManga.new(_volumes_manga_params)

    respond_to do |format|
      if @_volumes_manga.save
        format.html { redirect_to volumes_manga_url(@_volumes_manga), notice: "Volumes manga was successfully created." }
        format.json { render :show, status: :created, location: @_volumes_manga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_volumes_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_volumes_mangas/1 or /_volumes_mangas/1.json
  def update
    respond_to do |format|
      if @_volumes_manga.update(_volumes_manga_params)
        format.html { redirect_to volumes_manga_url(@_volumes_manga), notice: "Volumes manga was successfully updated." }
        format.json { render :show, status: :ok, location: @_volumes_manga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_volumes_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_volumes_mangas/1 or /_volumes_mangas/1.json
  def destroy
    @_volumes_manga.destroy!

    respond_to do |format|
      format.html { redirect_to volumes_mangas_url, notice: "Volumes manga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__volumes_manga
      @_volumes_manga = VolumesManga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _volumes_manga_params
      params.require(:volumes_manga).permit(:name)
    end
end
