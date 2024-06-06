class BrevesEmissionTvNumerosController < ApplicationController
  before_action :set__breves_emission_tv_numero, only: %i[ show edit update destroy ]

  # GET /_breves_emission_tv_numeros or /_breves_emission_tv_numeros.json
  def index
    @_breves_emission_tv_numeros = BrevesEmissionTvNumero.all
  end

  # GET /_breves_emission_tv_numeros/1 or /_breves_emission_tv_numeros/1.json
  def show
  end

  # GET /_breves_emission_tv_numeros/new
  def new
    @_breves_emission_tv_numero = BrevesEmissionTvNumero.new
  end

  # GET /_breves_emission_tv_numeros/1/edit
  def edit
  end

  # POST /_breves_emission_tv_numeros or /_breves_emission_tv_numeros.json
  def create
    @_breves_emission_tv_numero = BrevesEmissionTvNumero.new(_breves_emission_tv_numero_params)

    respond_to do |format|
      if @_breves_emission_tv_numero.save
        format.html { redirect_to breves_emission_tv_numero_url(@_breves_emission_tv_numero), notice: "Breves emission tv numero was successfully created." }
        format.json { render :show, status: :created, location: @_breves_emission_tv_numero }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_emission_tv_numero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_emission_tv_numeros/1 or /_breves_emission_tv_numeros/1.json
  def update
    respond_to do |format|
      if @_breves_emission_tv_numero.update(_breves_emission_tv_numero_params)
        format.html { redirect_to breves_emission_tv_numero_url(@_breves_emission_tv_numero), notice: "Breves emission tv numero was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_emission_tv_numero }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_emission_tv_numero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_emission_tv_numeros/1 or /_breves_emission_tv_numeros/1.json
  def destroy
    @_breves_emission_tv_numero.destroy!

    respond_to do |format|
      format.html { redirect_to breves_emission_tv_numeros_url, notice: "Breves emission tv numero was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_emission_tv_numero
      @_breves_emission_tv_numero = BrevesEmissionTvNumero.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_emission_tv_numero_params
      params.require(:breves_emission_tv_numero).permit(:name)
    end
end
