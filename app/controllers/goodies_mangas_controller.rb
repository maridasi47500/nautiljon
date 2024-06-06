class GoodiesMangasController < ApplicationController
  before_action :set__goodies_manga, only: %i[ show edit update destroy ]

  # GET /_goodies_mangas or /_goodies_mangas.json
  def index
    @_goodies_mangas = GoodiesManga.all
  end

  # GET /_goodies_mangas/1 or /_goodies_mangas/1.json
  def show
  end

  # GET /_goodies_mangas/new
  def new
    @_goodies_manga = GoodiesManga.new
  end

  # GET /_goodies_mangas/1/edit
  def edit
  end

  # POST /_goodies_mangas or /_goodies_mangas.json
  def create
    @_goodies_manga = GoodiesManga.new(_goodies_manga_params)

    respond_to do |format|
      if @_goodies_manga.save
        format.html { redirect_to goodies_manga_url(@_goodies_manga), notice: "Goodies manga was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_manga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_mangas/1 or /_goodies_mangas/1.json
  def update
    respond_to do |format|
      if @_goodies_manga.update(_goodies_manga_params)
        format.html { redirect_to goodies_manga_url(@_goodies_manga), notice: "Goodies manga was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_manga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_mangas/1 or /_goodies_mangas/1.json
  def destroy
    @_goodies_manga.destroy!

    respond_to do |format|
      format.html { redirect_to goodies_mangas_url, notice: "Goodies manga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_manga
      @_goodies_manga = GoodiesManga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_manga_params
      params.require(:goodies_manga).permit(:name)
    end
end
