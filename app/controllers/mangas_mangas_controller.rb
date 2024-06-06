class MangasMangasController < ApplicationController
  before_action :set__mangas_manga, only: %i[ show edit update destroy ]

  # GET /_mangas_mangas or /_mangas_mangas.json
  def index
    @_mangas_mangas = MangasManga.all
  end

  # GET /_mangas_mangas/1 or /_mangas_mangas/1.json
  def show
  end

  # GET /_mangas_mangas/new
  def new
    @_mangas_manga = MangasManga.new
  end

  # GET /_mangas_mangas/1/edit
  def edit
  end

  # POST /_mangas_mangas or /_mangas_mangas.json
  def create
    @_mangas_manga = MangasManga.new(_mangas_manga_params)

    respond_to do |format|
      if @_mangas_manga.save
        format.html { redirect_to mangas_manga_url(@_mangas_manga), notice: "Mangas manga was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_manga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_mangas/1 or /_mangas_mangas/1.json
  def update
    respond_to do |format|
      if @_mangas_manga.update(_mangas_manga_params)
        format.html { redirect_to mangas_manga_url(@_mangas_manga), notice: "Mangas manga was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_manga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_mangas/1 or /_mangas_mangas/1.json
  def destroy
    @_mangas_manga.destroy!

    respond_to do |format|
      format.html { redirect_to mangas_mangas_url, notice: "Mangas manga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_manga
      @_mangas_manga = MangasManga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_manga_params
      params.require(:mangas_manga).permit(:name)
    end
end
