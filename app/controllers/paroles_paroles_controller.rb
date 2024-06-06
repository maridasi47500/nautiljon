class ParolesParolesController < ApplicationController
  before_action :set__paroles_parole, only: %i[ show edit update destroy ]

  # GET /_paroles_paroles or /_paroles_paroles.json
  def index
    @_paroles_paroles = ParolesParole.all
  end

  # GET /_paroles_paroles/1 or /_paroles_paroles/1.json
  def show
  end

  # GET /_paroles_paroles/new
  def new
    @_paroles_parole = ParolesParole.new
  end

  # GET /_paroles_paroles/1/edit
  def edit
  end

  # POST /_paroles_paroles or /_paroles_paroles.json
  def create
    @_paroles_parole = ParolesParole.new(_paroles_parole_params)

    respond_to do |format|
      if @_paroles_parole.save
        format.html { redirect_to paroles_parole_url(@_paroles_parole), notice: "Paroles parole was successfully created." }
        format.json { render :show, status: :created, location: @_paroles_parole }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_paroles_parole.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_paroles_paroles/1 or /_paroles_paroles/1.json
  def update
    respond_to do |format|
      if @_paroles_parole.update(_paroles_parole_params)
        format.html { redirect_to paroles_parole_url(@_paroles_parole), notice: "Paroles parole was successfully updated." }
        format.json { render :show, status: :ok, location: @_paroles_parole }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_paroles_parole.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_paroles_paroles/1 or /_paroles_paroles/1.json
  def destroy
    @_paroles_parole.destroy!

    respond_to do |format|
      format.html { redirect_to paroles_paroles_url, notice: "Paroles parole was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__paroles_parole
      @_paroles_parole = ParolesParole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _paroles_parole_params
      params.require(:paroles_parole).permit(:name)
    end
end
