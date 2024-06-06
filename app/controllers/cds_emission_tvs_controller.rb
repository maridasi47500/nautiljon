class CdsEmissionTvsController < ApplicationController
  before_action :set__cds_emission_tv, only: %i[ show edit update destroy ]

  # GET /_cds_emission_tvs or /_cds_emission_tvs.json
  def index
    @_cds_emission_tvs = CdsEmissionTv.all
  end

  # GET /_cds_emission_tvs/1 or /_cds_emission_tvs/1.json
  def show
  end

  # GET /_cds_emission_tvs/new
  def new
    @_cds_emission_tv = CdsEmissionTv.new
  end

  # GET /_cds_emission_tvs/1/edit
  def edit
  end

  # POST /_cds_emission_tvs or /_cds_emission_tvs.json
  def create
    @_cds_emission_tv = CdsEmissionTv.new(_cds_emission_tv_params)

    respond_to do |format|
      if @_cds_emission_tv.save
        format.html { redirect_to _cds_emission_tv_url(@_cds_emission_tv), notice: "Cds emission tv was successfully created." }
        format.json { render :show, status: :created, location: @_cds_emission_tv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_cds_emission_tv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_cds_emission_tvs/1 or /_cds_emission_tvs/1.json
  def update
    respond_to do |format|
      if @_cds_emission_tv.update(_cds_emission_tv_params)
        format.html { redirect_to _cds_emission_tv_url(@_cds_emission_tv), notice: "Cds emission tv was successfully updated." }
        format.json { render :show, status: :ok, location: @_cds_emission_tv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_cds_emission_tv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_cds_emission_tvs/1 or /_cds_emission_tvs/1.json
  def destroy
    @_cds_emission_tv.destroy!

    respond_to do |format|
      format.html { redirect_to _cds_emission_tvs_url, notice: "Cds emission tv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__cds_emission_tv
      @_cds_emission_tv = CdsEmissionTv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _cds_emission_tv_params
      params.require(:_cds_emission_tv).permit(:name)
    end
end
