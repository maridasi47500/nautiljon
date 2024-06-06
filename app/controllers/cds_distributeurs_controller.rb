class CdsDistributeursController < ApplicationController
  before_action :set__cds_distributeur, only: %i[ show edit update destroy ]

  # GET /_cds_distributeurs or /_cds_distributeurs.json
  def index
    @_cds_distributeurs = CdsDistributeur.all
  end

  # GET /_cds_distributeurs/1 or /_cds_distributeurs/1.json
  def show
  end

  # GET /_cds_distributeurs/new
  def new
    @_cds_distributeur = CdsDistributeur.new
  end

  # GET /_cds_distributeurs/1/edit
  def edit
  end

  # POST /_cds_distributeurs or /_cds_distributeurs.json
  def create
    @_cds_distributeur = CdsDistributeur.new(_cds_distributeur_params)

    respond_to do |format|
      if @_cds_distributeur.save
        format.html { redirect_to cds_distributeur_url(@_cds_distributeur), notice: "Cds distributeur was successfully created." }
        format.json { render :show, status: :created, location: @_cds_distributeur }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_cds_distributeur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_cds_distributeurs/1 or /_cds_distributeurs/1.json
  def update
    respond_to do |format|
      if @_cds_distributeur.update(_cds_distributeur_params)
        format.html { redirect_to cds_distributeur_url(@_cds_distributeur), notice: "Cds distributeur was successfully updated." }
        format.json { render :show, status: :ok, location: @_cds_distributeur }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_cds_distributeur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_cds_distributeurs/1 or /_cds_distributeurs/1.json
  def destroy
    @_cds_distributeur.destroy!

    respond_to do |format|
      format.html { redirect_to cds_distributeurs_url, notice: "Cds distributeur was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__cds_distributeur
      @_cds_distributeur = CdsDistributeur.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _cds_distributeur_params
      params.require(:cds_distributeur).permit(:name)
    end
end
