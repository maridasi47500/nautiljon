class ParolesController < ApplicationController
  before_action :set__parole, only: %i[ show edit update destroy ]

  # GET /_paroles or /_paroles.json
  def index
    @_paroles = Parole.all
  end

  # GET /_paroles/1 or /_paroles/1.json
  def show
  end

  # GET /_paroles/new
  def new
    @_parole = Parole.new
  end

  # GET /_paroles/1/edit
  def edit
  end

  # POST /_paroles or /_paroles.json
  def create
    @_parole = Parole.new(_parole_params)

    respond_to do |format|
      if @_parole.save
        format.html { redirect_to parole_url(@_parole), notice: "Parole was successfully created." }
        format.json { render :show, status: :created, location: @_parole }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_parole.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_paroles/1 or /_paroles/1.json
  def update
    respond_to do |format|
      if @_parole.update(_parole_params)
        format.html { redirect_to parole_url(@_parole), notice: "Parole was successfully updated." }
        format.json { render :show, status: :ok, location: @_parole }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_parole.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_paroles/1 or /_paroles/1.json
  def destroy
    @_parole.destroy!

    respond_to do |format|
      format.html { redirect_to paroles_url, notice: "Parole was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__parole
      @_parole = Parole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _parole_params
      params.require(:parole).permit(:titre, :titre_original, :titre_alternatif, :titre_original_latin, :_paroles_staff_role_id, :_paroles_staff_people_id, :_paroles_staff_role_id, :_paroles_staff_people_id, :paroles, :paroles_trad, :membre_show, :membre_show, :source, :description, :instrumental, :instrumental, :_paroles_parole_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
