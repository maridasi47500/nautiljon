class GoodiesActualitesController < ApplicationController
  before_action :set__goodies_actualite, only: %i[ show edit update destroy ]

  # GET /_goodies_actualites or /_goodies_actualites.json
  def index
    @_goodies_actualites = GoodiesActualite.all
  end

  # GET /_goodies_actualites/1 or /_goodies_actualites/1.json
  def show
  end

  # GET /_goodies_actualites/new
  def new
    @_goodies_actualite = GoodiesActualite.new
  end

  # GET /_goodies_actualites/1/edit
  def edit
  end

  # POST /_goodies_actualites or /_goodies_actualites.json
  def create
    @_goodies_actualite = GoodiesActualite.new(_goodies_actualite_params)

    respond_to do |format|
      if @_goodies_actualite.save
        format.html { redirect_to _goodies_actualite_url(@_goodies_actualite), notice: "Goodies actualite was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_actualite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_actualites/1 or /_goodies_actualites/1.json
  def update
    respond_to do |format|
      if @_goodies_actualite.update(_goodies_actualite_params)
        format.html { redirect_to _goodies_actualite_url(@_goodies_actualite), notice: "Goodies actualite was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_actualite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_actualites/1 or /_goodies_actualites/1.json
  def destroy
    @_goodies_actualite.destroy!

    respond_to do |format|
      format.html { redirect_to _goodies_actualites_url, notice: "Goodies actualite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_actualite
      @_goodies_actualite = GoodiesActualite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_actualite_params
      params.require(:_goodies_actualite).permit(:name)
    end
end
