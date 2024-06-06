class PersonnalitesAgencesExesController < ApplicationController
  before_action :set__personnalites_agences_ex, only: %i[ show edit update destroy ]

  # GET /_personnalites_agences_exes or /_personnalites_agences_exes.json
  def index
    @_personnalites_agences_exes = PersonnalitesAgencesEx.all
  end

  # GET /_personnalites_agences_exes/1 or /_personnalites_agences_exes/1.json
  def show
  end

  # GET /_personnalites_agences_exes/new
  def new
    @_personnalites_agences_ex = PersonnalitesAgencesEx.new
  end

  # GET /_personnalites_agences_exes/1/edit
  def edit
  end

  # POST /_personnalites_agences_exes or /_personnalites_agences_exes.json
  def create
    @_personnalites_agences_ex = PersonnalitesAgencesEx.new(_personnalites_agences_ex_params)

    respond_to do |format|
      if @_personnalites_agences_ex.save
        format.html { redirect_to personnalites_agences_ex_url(@_personnalites_agences_ex), notice: "Personnalites agences ex was successfully created." }
        format.json { render :show, status: :created, location: @_personnalites_agences_ex }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnalites_agences_ex.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnalites_agences_exes/1 or /_personnalites_agences_exes/1.json
  def update
    respond_to do |format|
      if @_personnalites_agences_ex.update(_personnalites_agences_ex_params)
        format.html { redirect_to personnalites_agences_ex_url(@_personnalites_agences_ex), notice: "Personnalites agences ex was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnalites_agences_ex }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnalites_agences_ex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnalites_agences_exes/1 or /_personnalites_agences_exes/1.json
  def destroy
    @_personnalites_agences_ex.destroy!

    respond_to do |format|
      format.html { redirect_to personnalites_agences_exes_url, notice: "Personnalites agences ex was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnalites_agences_ex
      @_personnalites_agences_ex = PersonnalitesAgencesEx.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnalites_agences_ex_params
      params.require(:personnalites_agences_ex).permit(:name)
    end
end
