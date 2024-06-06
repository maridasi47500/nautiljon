class CdsGroupesController < ApplicationController
  before_action :set__cds_groupe, only: %i[ show edit update destroy ]

  # GET /_cds_groupes or /_cds_groupes.json
  def index
    @_cds_groupes = CdsGroupe.all
  end

  # GET /_cds_groupes/1 or /_cds_groupes/1.json
  def show
  end

  # GET /_cds_groupes/new
  def new
    @_cds_groupe = CdsGroupe.new
  end

  # GET /_cds_groupes/1/edit
  def edit
  end

  # POST /_cds_groupes or /_cds_groupes.json
  def create
    @_cds_groupe = CdsGroupe.new(_cds_groupe_params)

    respond_to do |format|
      if @_cds_groupe.save
        format.html { redirect_to _cds_groupe_url(@_cds_groupe), notice: "Cds groupe was successfully created." }
        format.json { render :show, status: :created, location: @_cds_groupe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_cds_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_cds_groupes/1 or /_cds_groupes/1.json
  def update
    respond_to do |format|
      if @_cds_groupe.update(_cds_groupe_params)
        format.html { redirect_to _cds_groupe_url(@_cds_groupe), notice: "Cds groupe was successfully updated." }
        format.json { render :show, status: :ok, location: @_cds_groupe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_cds_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_cds_groupes/1 or /_cds_groupes/1.json
  def destroy
    @_cds_groupe.destroy!

    respond_to do |format|
      format.html { redirect_to _cds_groupes_url, notice: "Cds groupe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__cds_groupe
      @_cds_groupe = CdsGroupe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _cds_groupe_params
      params.require(:_cds_groupe).permit(:name)
    end
end
