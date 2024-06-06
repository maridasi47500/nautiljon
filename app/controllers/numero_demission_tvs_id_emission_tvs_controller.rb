class NumeroDemissionTvsIdEmissionTvsController < ApplicationController
  before_action :set__numero_demission_tvs_id_emission_tv, only: %i[ show edit update destroy ]

  # GET /_numero_demission_tvs_id_emission_tvs or /_numero_demission_tvs_id_emission_tvs.json
  def index
    @_numero_demission_tvs_id_emission_tvs = NumeroDemissionTvsIdEmissionTv.all
  end

  # GET /_numero_demission_tvs_id_emission_tvs/1 or /_numero_demission_tvs_id_emission_tvs/1.json
  def show
  end

  # GET /_numero_demission_tvs_id_emission_tvs/new
  def new
    @_numero_demission_tvs_id_emission_tv = NumeroDemissionTvsIdEmissionTv.new
  end

  # GET /_numero_demission_tvs_id_emission_tvs/1/edit
  def edit
  end

  # POST /_numero_demission_tvs_id_emission_tvs or /_numero_demission_tvs_id_emission_tvs.json
  def create
    @_numero_demission_tvs_id_emission_tv = NumeroDemissionTvsIdEmissionTv.new(_numero_demission_tvs_id_emission_tv_params)

    respond_to do |format|
      if @_numero_demission_tvs_id_emission_tv.save
        format.html { redirect_to _numero_demission_tvs_id_emission_tv_url(@_numero_demission_tvs_id_emission_tv), notice: "Numero demission tvs id emission tv was successfully created." }
        format.json { render :show, status: :created, location: @_numero_demission_tvs_id_emission_tv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_numero_demission_tvs_id_emission_tv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_numero_demission_tvs_id_emission_tvs/1 or /_numero_demission_tvs_id_emission_tvs/1.json
  def update
    respond_to do |format|
      if @_numero_demission_tvs_id_emission_tv.update(_numero_demission_tvs_id_emission_tv_params)
        format.html { redirect_to _numero_demission_tvs_id_emission_tv_url(@_numero_demission_tvs_id_emission_tv), notice: "Numero demission tvs id emission tv was successfully updated." }
        format.json { render :show, status: :ok, location: @_numero_demission_tvs_id_emission_tv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_numero_demission_tvs_id_emission_tv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_numero_demission_tvs_id_emission_tvs/1 or /_numero_demission_tvs_id_emission_tvs/1.json
  def destroy
    @_numero_demission_tvs_id_emission_tv.destroy!

    respond_to do |format|
      format.html { redirect_to _numero_demission_tvs_id_emission_tvs_url, notice: "Numero demission tvs id emission tv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__numero_demission_tvs_id_emission_tv
      @_numero_demission_tvs_id_emission_tv = NumeroDemissionTvsIdEmissionTv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _numero_demission_tvs_id_emission_tv_params
      params.require(:_numero_demission_tvs_id_emission_tv).permit(:name)
    end
end
