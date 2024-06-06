class BrevesActualitesController < ApplicationController
  before_action :set__breves_actualite, only: %i[ show edit update destroy ]

  # GET /_breves_actualites or /_breves_actualites.json
  def index
    @_breves_actualites = BrevesActualite.all
  end

  # GET /_breves_actualites/1 or /_breves_actualites/1.json
  def show
  end

  # GET /_breves_actualites/new
  def new
    @_breves_actualite = BrevesActualite.new
  end

  # GET /_breves_actualites/1/edit
  def edit
  end

  # POST /_breves_actualites or /_breves_actualites.json
  def create
    @_breves_actualite = BrevesActualite.new(_breves_actualite_params)

    respond_to do |format|
      if @_breves_actualite.save
        format.html { redirect_to breves_actualite_url(@_breves_actualite), notice: "Breves actualite was successfully created." }
        format.json { render :show, status: :created, location: @_breves_actualite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_actualites/1 or /_breves_actualites/1.json
  def update
    respond_to do |format|
      if @_breves_actualite.update(_breves_actualite_params)
        format.html { redirect_to breves_actualite_url(@_breves_actualite), notice: "Breves actualite was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_actualite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_actualites/1 or /_breves_actualites/1.json
  def destroy
    @_breves_actualite.destroy!

    respond_to do |format|
      format.html { redirect_to breves_actualites_url, notice: "Breves actualite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_actualite
      @_breves_actualite = BrevesActualite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_actualite_params
      params.require(:breves_actualite).permit(:name)
    end
end
