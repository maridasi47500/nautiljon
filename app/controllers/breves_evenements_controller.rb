class BrevesEvenementsController < ApplicationController
  before_action :set__breves_evenement, only: %i[ show edit update destroy ]

  # GET /_breves_evenements or /_breves_evenements.json
  def index
    @_breves_evenements = BrevesEvenement.all
  end

  # GET /_breves_evenements/1 or /_breves_evenements/1.json
  def show
  end

  # GET /_breves_evenements/new
  def new
    @_breves_evenement = BrevesEvenement.new
  end

  # GET /_breves_evenements/1/edit
  def edit
  end

  # POST /_breves_evenements or /_breves_evenements.json
  def create
    @_breves_evenement = BrevesEvenement.new(_breves_evenement_params)

    respond_to do |format|
      if @_breves_evenement.save
        format.html { redirect_to _breves_evenement_url(@_breves_evenement), notice: "Breves evenement was successfully created." }
        format.json { render :show, status: :created, location: @_breves_evenement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_evenement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_evenements/1 or /_breves_evenements/1.json
  def update
    respond_to do |format|
      if @_breves_evenement.update(_breves_evenement_params)
        format.html { redirect_to _breves_evenement_url(@_breves_evenement), notice: "Breves evenement was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_evenement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_evenement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_evenements/1 or /_breves_evenements/1.json
  def destroy
    @_breves_evenement.destroy!

    respond_to do |format|
      format.html { redirect_to _breves_evenements_url, notice: "Breves evenement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_evenement
      @_breves_evenement = BrevesEvenement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_evenement_params
      params.require(:_breves_evenement).permit(:name)
    end
end
