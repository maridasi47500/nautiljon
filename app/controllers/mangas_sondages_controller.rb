class MangasSondagesController < ApplicationController
  before_action :set__mangas_sondage, only: %i[ show edit update destroy ]

  # GET /_mangas_sondages or /_mangas_sondages.json
  def index
    @_mangas_sondages = MangasSondage.all
  end

  # GET /_mangas_sondages/1 or /_mangas_sondages/1.json
  def show
  end

  # GET /_mangas_sondages/new
  def new
    @_mangas_sondage = MangasSondage.new
  end

  # GET /_mangas_sondages/1/edit
  def edit
  end

  # POST /_mangas_sondages or /_mangas_sondages.json
  def create
    @_mangas_sondage = MangasSondage.new(_mangas_sondage_params)

    respond_to do |format|
      if @_mangas_sondage.save
        format.html { redirect_to _mangas_sondage_url(@_mangas_sondage), notice: "Mangas sondage was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_sondage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_sondage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_sondages/1 or /_mangas_sondages/1.json
  def update
    respond_to do |format|
      if @_mangas_sondage.update(_mangas_sondage_params)
        format.html { redirect_to _mangas_sondage_url(@_mangas_sondage), notice: "Mangas sondage was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_sondage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_sondage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_sondages/1 or /_mangas_sondages/1.json
  def destroy
    @_mangas_sondage.destroy!

    respond_to do |format|
      format.html { redirect_to _mangas_sondages_url, notice: "Mangas sondage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_sondage
      @_mangas_sondage = MangasSondage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_sondage_params
      params.require(:_mangas_sondage).permit(:name)
    end
end
