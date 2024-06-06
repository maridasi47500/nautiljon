class NumeroDemissionTvsEmissionTvNumerosController < ApplicationController
  before_action :set__numero_demission_tvs_emission_tv_numero, only: %i[ show edit update destroy ]

  # GET /_numero_demission_tvs_emission_tv_numeros or /_numero_demission_tvs_emission_tv_numeros.json
  def index
    @_numero_demission_tvs_emission_tv_numeros = NumeroDemissionTvsEmissionTvNumero.all
  end

  # GET /_numero_demission_tvs_emission_tv_numeros/1 or /_numero_demission_tvs_emission_tv_numeros/1.json
  def show
  end

  # GET /_numero_demission_tvs_emission_tv_numeros/new
  def new
    @_numero_demission_tvs_emission_tv_numero = NumeroDemissionTvsEmissionTvNumero.new
  end

  # GET /_numero_demission_tvs_emission_tv_numeros/1/edit
  def edit
  end

  # POST /_numero_demission_tvs_emission_tv_numeros or /_numero_demission_tvs_emission_tv_numeros.json
  def create
    @_numero_demission_tvs_emission_tv_numero = NumeroDemissionTvsEmissionTvNumero.new(_numero_demission_tvs_emission_tv_numero_params)

    respond_to do |format|
      if @_numero_demission_tvs_emission_tv_numero.save
        format.html { redirect_to numero_demission_tvs_emission_tv_numero_url(@_numero_demission_tvs_emission_tv_numero), notice: "Numero demission tvs emission tv numero was successfully created." }
        format.json { render :show, status: :created, location: @_numero_demission_tvs_emission_tv_numero }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_numero_demission_tvs_emission_tv_numero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_numero_demission_tvs_emission_tv_numeros/1 or /_numero_demission_tvs_emission_tv_numeros/1.json
  def update
    respond_to do |format|
      if @_numero_demission_tvs_emission_tv_numero.update(_numero_demission_tvs_emission_tv_numero_params)
        format.html { redirect_to numero_demission_tvs_emission_tv_numero_url(@_numero_demission_tvs_emission_tv_numero), notice: "Numero demission tvs emission tv numero was successfully updated." }
        format.json { render :show, status: :ok, location: @_numero_demission_tvs_emission_tv_numero }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_numero_demission_tvs_emission_tv_numero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_numero_demission_tvs_emission_tv_numeros/1 or /_numero_demission_tvs_emission_tv_numeros/1.json
  def destroy
    @_numero_demission_tvs_emission_tv_numero.destroy!

    respond_to do |format|
      format.html { redirect_to numero_demission_tvs_emission_tv_numeros_url, notice: "Numero demission tvs emission tv numero was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__numero_demission_tvs_emission_tv_numero
      @_numero_demission_tvs_emission_tv_numero = NumeroDemissionTvsEmissionTvNumero.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _numero_demission_tvs_emission_tv_numero_params
      params.require(:numero_demission_tvs_emission_tv_numero).permit(:name)
    end
end
