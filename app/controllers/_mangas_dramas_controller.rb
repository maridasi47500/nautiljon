class MangasDramasController < ApplicationController
  before_action :set__mangas_drama, only: %i[ show edit update destroy ]

  # GET /_mangas_dramas or /_mangas_dramas.json
  def index
    @_mangas_dramas = MangasDrama.all
  end

  # GET /_mangas_dramas/1 or /_mangas_dramas/1.json
  def show
  end

  # GET /_mangas_dramas/new
  def new
    @_mangas_drama = MangasDrama.new
  end

  # GET /_mangas_dramas/1/edit
  def edit
  end

  # POST /_mangas_dramas or /_mangas_dramas.json
  def create
    @_mangas_drama = MangasDrama.new(_mangas_drama_params)

    respond_to do |format|
      if @_mangas_drama.save
        format.html { redirect_to _mangas_drama_url(@_mangas_drama), notice: "Mangas drama was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_drama }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_dramas/1 or /_mangas_dramas/1.json
  def update
    respond_to do |format|
      if @_mangas_drama.update(_mangas_drama_params)
        format.html { redirect_to _mangas_drama_url(@_mangas_drama), notice: "Mangas drama was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_drama }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_dramas/1 or /_mangas_dramas/1.json
  def destroy
    @_mangas_drama.destroy!

    respond_to do |format|
      format.html { redirect_to _mangas_dramas_url, notice: "Mangas drama was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_drama
      @_mangas_drama = MangasDrama.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_drama_params
      params.require(:_mangas_drama).permit(:name)
    end
end
