class MangasCulturesController < ApplicationController
  before_action :set__mangas_culture, only: %i[ show edit update destroy ]

  # GET /_mangas_cultures or /_mangas_cultures.json
  def index
    @_mangas_cultures = MangasCulture.all
  end

  # GET /_mangas_cultures/1 or /_mangas_cultures/1.json
  def show
  end

  # GET /_mangas_cultures/new
  def new
    @_mangas_culture = MangasCulture.new
  end

  # GET /_mangas_cultures/1/edit
  def edit
  end

  # POST /_mangas_cultures or /_mangas_cultures.json
  def create
    @_mangas_culture = MangasCulture.new(_mangas_culture_params)

    respond_to do |format|
      if @_mangas_culture.save
        format.html { redirect_to mangas_culture_url(@_mangas_culture), notice: "Mangas culture was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_culture }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_cultures/1 or /_mangas_cultures/1.json
  def update
    respond_to do |format|
      if @_mangas_culture.update(_mangas_culture_params)
        format.html { redirect_to mangas_culture_url(@_mangas_culture), notice: "Mangas culture was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_culture }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_cultures/1 or /_mangas_cultures/1.json
  def destroy
    @_mangas_culture.destroy!

    respond_to do |format|
      format.html { redirect_to mangas_cultures_url, notice: "Mangas culture was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_culture
      @_mangas_culture = MangasCulture.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_culture_params
      params.require(:mangas_culture).permit(:name)
    end
end
