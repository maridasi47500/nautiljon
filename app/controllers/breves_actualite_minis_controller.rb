class BrevesActualiteMinisController < ApplicationController
  before_action :set__breves_actualite_mini, only: %i[ show edit update destroy ]

  # GET /_breves_actualite_minis or /_breves_actualite_minis.json
  def index
    @_breves_actualite_minis = BrevesActualiteMini.all
  end

  # GET /_breves_actualite_minis/1 or /_breves_actualite_minis/1.json
  def show
  end

  # GET /_breves_actualite_minis/new
  def new
    @_breves_actualite_mini = BrevesActualiteMini.new
  end

  # GET /_breves_actualite_minis/1/edit
  def edit
  end

  # POST /_breves_actualite_minis or /_breves_actualite_minis.json
  def create
    @_breves_actualite_mini = BrevesActualiteMini.new(_breves_actualite_mini_params)

    respond_to do |format|
      if @_breves_actualite_mini.save
        format.html { redirect_to breves_actualite_mini_url(@_breves_actualite_mini), notice: "Breves actualite mini was successfully created." }
        format.json { render :show, status: :created, location: @_breves_actualite_mini }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_actualite_minis/1 or /_breves_actualite_minis/1.json
  def update
    respond_to do |format|
      if @_breves_actualite_mini.update(_breves_actualite_mini_params)
        format.html { redirect_to breves_actualite_mini_url(@_breves_actualite_mini), notice: "Breves actualite mini was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_actualite_mini }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_actualite_minis/1 or /_breves_actualite_minis/1.json
  def destroy
    @_breves_actualite_mini.destroy!

    respond_to do |format|
      format.html { redirect_to breves_actualite_minis_url, notice: "Breves actualite mini was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_actualite_mini
      @_breves_actualite_mini = BrevesActualiteMini.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_actualite_mini_params
      params.require(:breves_actualite_mini).permit(:name)
    end
end
