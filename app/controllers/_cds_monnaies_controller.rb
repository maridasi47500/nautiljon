class CdsMonnaiesController < ApplicationController
  before_action :set__cds_monnaie, only: %i[ show edit update destroy ]

  # GET /_cds_monnaies or /_cds_monnaies.json
  def index
    @_cds_monnaies = CdsMonnaie.all
  end

  # GET /_cds_monnaies/1 or /_cds_monnaies/1.json
  def show
  end

  # GET /_cds_monnaies/new
  def new
    @_cds_monnaie = CdsMonnaie.new
  end

  # GET /_cds_monnaies/1/edit
  def edit
  end

  # POST /_cds_monnaies or /_cds_monnaies.json
  def create
    @_cds_monnaie = CdsMonnaie.new(_cds_monnaie_params)

    respond_to do |format|
      if @_cds_monnaie.save
        format.html { redirect_to _cds_monnaie_url(@_cds_monnaie), notice: "Cds monnaie was successfully created." }
        format.json { render :show, status: :created, location: @_cds_monnaie }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_cds_monnaie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_cds_monnaies/1 or /_cds_monnaies/1.json
  def update
    respond_to do |format|
      if @_cds_monnaie.update(_cds_monnaie_params)
        format.html { redirect_to _cds_monnaie_url(@_cds_monnaie), notice: "Cds monnaie was successfully updated." }
        format.json { render :show, status: :ok, location: @_cds_monnaie }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_cds_monnaie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_cds_monnaies/1 or /_cds_monnaies/1.json
  def destroy
    @_cds_monnaie.destroy!

    respond_to do |format|
      format.html { redirect_to _cds_monnaies_url, notice: "Cds monnaie was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__cds_monnaie
      @_cds_monnaie = CdsMonnaie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _cds_monnaie_params
      params.require(:_cds_monnaie).permit(:name)
    end
end
