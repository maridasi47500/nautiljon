class NumeroDemissionTvsPresentateursController < ApplicationController
  before_action :set__numero_demission_tvs_presentateur, only: %i[ show edit update destroy ]

  # GET /_numero_demission_tvs_presentateurs or /_numero_demission_tvs_presentateurs.json
  def index
    @_numero_demission_tvs_presentateurs = NumeroDemissionTvsPresentateur.all
  end

  # GET /_numero_demission_tvs_presentateurs/1 or /_numero_demission_tvs_presentateurs/1.json
  def show
  end

  # GET /_numero_demission_tvs_presentateurs/new
  def new
    @_numero_demission_tvs_presentateur = NumeroDemissionTvsPresentateur.new
  end

  # GET /_numero_demission_tvs_presentateurs/1/edit
  def edit
  end

  # POST /_numero_demission_tvs_presentateurs or /_numero_demission_tvs_presentateurs.json
  def create
    @_numero_demission_tvs_presentateur = NumeroDemissionTvsPresentateur.new(_numero_demission_tvs_presentateur_params)

    respond_to do |format|
      if @_numero_demission_tvs_presentateur.save
        format.html { redirect_to _numero_demission_tvs_presentateur_url(@_numero_demission_tvs_presentateur), notice: "Numero demission tvs presentateur was successfully created." }
        format.json { render :show, status: :created, location: @_numero_demission_tvs_presentateur }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_numero_demission_tvs_presentateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_numero_demission_tvs_presentateurs/1 or /_numero_demission_tvs_presentateurs/1.json
  def update
    respond_to do |format|
      if @_numero_demission_tvs_presentateur.update(_numero_demission_tvs_presentateur_params)
        format.html { redirect_to _numero_demission_tvs_presentateur_url(@_numero_demission_tvs_presentateur), notice: "Numero demission tvs presentateur was successfully updated." }
        format.json { render :show, status: :ok, location: @_numero_demission_tvs_presentateur }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_numero_demission_tvs_presentateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_numero_demission_tvs_presentateurs/1 or /_numero_demission_tvs_presentateurs/1.json
  def destroy
    @_numero_demission_tvs_presentateur.destroy!

    respond_to do |format|
      format.html { redirect_to _numero_demission_tvs_presentateurs_url, notice: "Numero demission tvs presentateur was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__numero_demission_tvs_presentateur
      @_numero_demission_tvs_presentateur = NumeroDemissionTvsPresentateur.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _numero_demission_tvs_presentateur_params
      params.require(:_numero_demission_tvs_presentateur).permit(:name)
    end
end
