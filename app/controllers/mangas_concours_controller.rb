class MangasConcoursController < ApplicationController
  before_action :set__mangas_concour, only: %i[ show edit update destroy ]

  # GET /_mangas_concours or /_mangas_concours.json
  def index
    @_mangas_concours = MangasConcour.all
  end

  # GET /_mangas_concours/1 or /_mangas_concours/1.json
  def show
  end

  # GET /_mangas_concours/new
  def new
    @_mangas_concour = MangasConcour.new
  end

  # GET /_mangas_concours/1/edit
  def edit
  end

  # POST /_mangas_concours or /_mangas_concours.json
  def create
    @_mangas_concour = MangasConcour.new(_mangas_concour_params)

    respond_to do |format|
      if @_mangas_concour.save
        format.html { redirect_to mangas_concour_url(@_mangas_concour), notice: "Mangas concour was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_concour }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_concour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_concours/1 or /_mangas_concours/1.json
  def update
    respond_to do |format|
      if @_mangas_concour.update(_mangas_concour_params)
        format.html { redirect_to mangas_concour_url(@_mangas_concour), notice: "Mangas concour was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_concour }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_concour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_concours/1 or /_mangas_concours/1.json
  def destroy
    @_mangas_concour.destroy!

    respond_to do |format|
      format.html { redirect_to mangas_concours_url, notice: "Mangas concour was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_concour
      @_mangas_concour = MangasConcour.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_concour_params
      params.require(:mangas_concour).permit(:name)
    end
end
