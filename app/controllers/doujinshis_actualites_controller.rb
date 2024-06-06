class DoujinshisActualitesController < ApplicationController
  before_action :set__doujinshis_actualite, only: %i[ show edit update destroy ]

  # GET /_doujinshis_actualites or /_doujinshis_actualites.json
  def index
    @_doujinshis_actualites = DoujinshisActualite.all
  end

  # GET /_doujinshis_actualites/1 or /_doujinshis_actualites/1.json
  def show
  end

  # GET /_doujinshis_actualites/new
  def new
    @_doujinshis_actualite = DoujinshisActualite.new
  end

  # GET /_doujinshis_actualites/1/edit
  def edit
  end

  # POST /_doujinshis_actualites or /_doujinshis_actualites.json
  def create
    @_doujinshis_actualite = DoujinshisActualite.new(_doujinshis_actualite_params)

    respond_to do |format|
      if @_doujinshis_actualite.save
        format.html { redirect_to doujinshis_actualite_url(@_doujinshis_actualite), notice: "Doujinshis actualite was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_actualite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_actualites/1 or /_doujinshis_actualites/1.json
  def update
    respond_to do |format|
      if @_doujinshis_actualite.update(_doujinshis_actualite_params)
        format.html { redirect_to doujinshis_actualite_url(@_doujinshis_actualite), notice: "Doujinshis actualite was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_actualite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_actualites/1 or /_doujinshis_actualites/1.json
  def destroy
    @_doujinshis_actualite.destroy!

    respond_to do |format|
      format.html { redirect_to doujinshis_actualites_url, notice: "Doujinshis actualite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_actualite
      @_doujinshis_actualite = DoujinshisActualite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_actualite_params
      params.require(:doujinshis_actualite).permit(:name)
    end
end
