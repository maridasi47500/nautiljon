class NumeroDemissionTvsController < ApplicationController
  before_action :set__numero_demission_tv, only: %i[ show edit update destroy ]

  # GET /_numero_demission_tvs or /_numero_demission_tvs.json
  def index
    @_numero_demission_tvs = NumeroDemissionTv.all
  end

  # GET /_numero_demission_tvs/1 or /_numero_demission_tvs/1.json
  def show
  end

  # GET /_numero_demission_tvs/new
  def new
    @_numero_demission_tv = NumeroDemissionTv.new
  end

  # GET /_numero_demission_tvs/1/edit
  def edit
  end

  # POST /_numero_demission_tvs or /_numero_demission_tvs.json
  def create
    @_numero_demission_tv = NumeroDemissionTv.new(_numero_demission_tv_params)

    respond_to do |format|
      if @_numero_demission_tv.save
        format.html { redirect_to numero_demission_tv_url(@_numero_demission_tv), notice: "Numero demission tv was successfully created." }
        format.json { render :show, status: :created, location: @_numero_demission_tv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_numero_demission_tv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_numero_demission_tvs/1 or /_numero_demission_tvs/1.json
  def update
    respond_to do |format|
      if @_numero_demission_tv.update(_numero_demission_tv_params)
        format.html { redirect_to numero_demission_tv_url(@_numero_demission_tv), notice: "Numero demission tv was successfully updated." }
        format.json { render :show, status: :ok, location: @_numero_demission_tv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_numero_demission_tv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_numero_demission_tvs/1 or /_numero_demission_tvs/1.json
  def destroy
    @_numero_demission_tv.destroy!

    respond_to do |format|
      format.html { redirect_to numero_demission_tvs_url, notice: "Numero demission tv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__numero_demission_tv
      @_numero_demission_tv = NumeroDemissionTv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _numero_demission_tv_params
      params.require(:numero_demission_tv).permit(:_numero_demission_tvs_id_emission_tv_id, :titre, :titre_original, :date_jj, :date_mm, :date_aaaa, :_numero_demission_tvs_special_id, :duree, :_numero_demission_tvs_presentateur_id, :_numero_demission_tvs_presentateur_id, :_numero_demission_tvs_people_id, :_numero_demission_tvs_people_id, :image, :infos, :youtube, :_numero_demission_tvs_emission_tv_numero_id, :_numero_demission_tvs_clip_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
