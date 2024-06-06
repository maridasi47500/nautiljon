class Clips::Lives::Bonus::ConcertsEmissionTvNumerosController < ApplicationController
  before_action :set__clips___lives___bonus___concerts_emission_tv_numero, only: %i[ show edit update destroy ]

  # GET /_clips_/_lives_/_bonus_/_concerts_emission_tv_numeros or /_clips_/_lives_/_bonus_/_concerts_emission_tv_numeros.json
  def index
    @_clips___lives___bonus___concerts_emission_tv_numeros = Clips::Lives::Bonus::ConcertsEmissionTvNumero.all
  end

  # GET /_clips_/_lives_/_bonus_/_concerts_emission_tv_numeros/1 or /_clips_/_lives_/_bonus_/_concerts_emission_tv_numeros/1.json
  def show
  end

  # GET /_clips_/_lives_/_bonus_/_concerts_emission_tv_numeros/new
  def new
    @_clips___lives___bonus___concerts_emission_tv_numero = Clips::Lives::Bonus::ConcertsEmissionTvNumero.new
  end

  # GET /_clips_/_lives_/_bonus_/_concerts_emission_tv_numeros/1/edit
  def edit
  end

  # POST /_clips_/_lives_/_bonus_/_concerts_emission_tv_numeros or /_clips_/_lives_/_bonus_/_concerts_emission_tv_numeros.json
  def create
    @_clips___lives___bonus___concerts_emission_tv_numero = Clips::Lives::Bonus::ConcertsEmissionTvNumero.new(_clips___lives___bonus___concerts_emission_tv_numero_params)

    respond_to do |format|
      if @_clips___lives___bonus___concerts_emission_tv_numero.save
        format.html { redirect_to _clips___lives___bonus___concerts_emission_tv_numero_url(@_clips___lives___bonus___concerts_emission_tv_numero), notice: "Concerts emission tv numero was successfully created." }
        format.json { render :show, status: :created, location: @_clips___lives___bonus___concerts_emission_tv_numero }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_clips___lives___bonus___concerts_emission_tv_numero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_clips_/_lives_/_bonus_/_concerts_emission_tv_numeros/1 or /_clips_/_lives_/_bonus_/_concerts_emission_tv_numeros/1.json
  def update
    respond_to do |format|
      if @_clips___lives___bonus___concerts_emission_tv_numero.update(_clips___lives___bonus___concerts_emission_tv_numero_params)
        format.html { redirect_to _clips___lives___bonus___concerts_emission_tv_numero_url(@_clips___lives___bonus___concerts_emission_tv_numero), notice: "Concerts emission tv numero was successfully updated." }
        format.json { render :show, status: :ok, location: @_clips___lives___bonus___concerts_emission_tv_numero }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_clips___lives___bonus___concerts_emission_tv_numero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_clips_/_lives_/_bonus_/_concerts_emission_tv_numeros/1 or /_clips_/_lives_/_bonus_/_concerts_emission_tv_numeros/1.json
  def destroy
    @_clips___lives___bonus___concerts_emission_tv_numero.destroy!

    respond_to do |format|
      format.html { redirect_to _clips___lives___bonus___concerts_emission_tv_numeros_url, notice: "Concerts emission tv numero was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__clips___lives___bonus___concerts_emission_tv_numero
      @_clips___lives___bonus___concerts_emission_tv_numero = Clips::Lives::Bonus::ConcertsEmissionTvNumero.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _clips___lives___bonus___concerts_emission_tv_numero_params
      params.require(:_clips___lives___bonus___concerts_emission_tv_numero).permit(:name)
    end
end
