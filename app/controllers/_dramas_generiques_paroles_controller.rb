class DramasGeneriquesParolesController < ApplicationController
  before_action :set__dramas_generiques_parole, only: %i[ show edit update destroy ]

  # GET /_dramas_generiques_paroles or /_dramas_generiques_paroles.json
  def index
    @_dramas_generiques_paroles = DramasGeneriquesParole.all
  end

  # GET /_dramas_generiques_paroles/1 or /_dramas_generiques_paroles/1.json
  def show
  end

  # GET /_dramas_generiques_paroles/new
  def new
    @_dramas_generiques_parole = DramasGeneriquesParole.new
  end

  # GET /_dramas_generiques_paroles/1/edit
  def edit
  end

  # POST /_dramas_generiques_paroles or /_dramas_generiques_paroles.json
  def create
    @_dramas_generiques_parole = DramasGeneriquesParole.new(_dramas_generiques_parole_params)

    respond_to do |format|
      if @_dramas_generiques_parole.save
        format.html { redirect_to _dramas_generiques_parole_url(@_dramas_generiques_parole), notice: "Dramas generiques parole was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_generiques_parole }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_generiques_parole.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_generiques_paroles/1 or /_dramas_generiques_paroles/1.json
  def update
    respond_to do |format|
      if @_dramas_generiques_parole.update(_dramas_generiques_parole_params)
        format.html { redirect_to _dramas_generiques_parole_url(@_dramas_generiques_parole), notice: "Dramas generiques parole was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_generiques_parole }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_generiques_parole.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_generiques_paroles/1 or /_dramas_generiques_paroles/1.json
  def destroy
    @_dramas_generiques_parole.destroy!

    respond_to do |format|
      format.html { redirect_to _dramas_generiques_paroles_url, notice: "Dramas generiques parole was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_generiques_parole
      @_dramas_generiques_parole = DramasGeneriquesParole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_generiques_parole_params
      params.require(:_dramas_generiques_parole).permit(:name)
    end
end
