class LightNovelsMangasController < ApplicationController
  before_action :set__light_novels_manga, only: %i[ show edit update destroy ]

  # GET /_light_novels_mangas or /_light_novels_mangas.json
  def index
    @_light_novels_mangas = LightNovelsManga.all
  end

  # GET /_light_novels_mangas/1 or /_light_novels_mangas/1.json
  def show
  end

  # GET /_light_novels_mangas/new
  def new
    @_light_novels_manga = LightNovelsManga.new
  end

  # GET /_light_novels_mangas/1/edit
  def edit
  end

  # POST /_light_novels_mangas or /_light_novels_mangas.json
  def create
    @_light_novels_manga = LightNovelsManga.new(_light_novels_manga_params)

    respond_to do |format|
      if @_light_novels_manga.save
        format.html { redirect_to light_novels_manga_url(@_light_novels_manga), notice: "Light novels manga was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_manga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_mangas/1 or /_light_novels_mangas/1.json
  def update
    respond_to do |format|
      if @_light_novels_manga.update(_light_novels_manga_params)
        format.html { redirect_to light_novels_manga_url(@_light_novels_manga), notice: "Light novels manga was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_manga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_mangas/1 or /_light_novels_mangas/1.json
  def destroy
    @_light_novels_manga.destroy!

    respond_to do |format|
      format.html { redirect_to light_novels_mangas_url, notice: "Light novels manga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_manga
      @_light_novels_manga = LightNovelsManga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_manga_params
      params.require(:light_novels_manga).permit(:name)
    end
end
