class PersonnalitesStatutsController < ApplicationController
  before_action :set__personnalites_statut, only: %i[ show edit update destroy ]

  # GET /_personnalites_statuts or /_personnalites_statuts.json
  def index
    @_personnalites_statuts = PersonnalitesStatut.all
  end

  # GET /_personnalites_statuts/1 or /_personnalites_statuts/1.json
  def show
  end

  # GET /_personnalites_statuts/new
  def new
    @_personnalites_statut = PersonnalitesStatut.new
  end

  # GET /_personnalites_statuts/1/edit
  def edit
  end

  # POST /_personnalites_statuts or /_personnalites_statuts.json
  def create
    @_personnalites_statut = PersonnalitesStatut.new(_personnalites_statut_params)

    respond_to do |format|
      if @_personnalites_statut.save
        format.html { redirect_to _personnalites_statut_url(@_personnalites_statut), notice: "Personnalites statut was successfully created." }
        format.json { render :show, status: :created, location: @_personnalites_statut }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnalites_statut.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnalites_statuts/1 or /_personnalites_statuts/1.json
  def update
    respond_to do |format|
      if @_personnalites_statut.update(_personnalites_statut_params)
        format.html { redirect_to _personnalites_statut_url(@_personnalites_statut), notice: "Personnalites statut was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnalites_statut }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnalites_statut.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnalites_statuts/1 or /_personnalites_statuts/1.json
  def destroy
    @_personnalites_statut.destroy!

    respond_to do |format|
      format.html { redirect_to _personnalites_statuts_url, notice: "Personnalites statut was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnalites_statut
      @_personnalites_statut = PersonnalitesStatut.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnalites_statut_params
      params.require(:_personnalites_statut).permit(:name)
    end
end
