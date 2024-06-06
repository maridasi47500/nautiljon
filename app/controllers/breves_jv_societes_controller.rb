class BrevesJvSocietesController < ApplicationController
  before_action :set__breves_jv_societe, only: %i[ show edit update destroy ]

  # GET /_breves_jv_societes or /_breves_jv_societes.json
  def index
    @_breves_jv_societes = BrevesJvSociete.all
  end

  # GET /_breves_jv_societes/1 or /_breves_jv_societes/1.json
  def show
  end

  # GET /_breves_jv_societes/new
  def new
    @_breves_jv_societe = BrevesJvSociete.new
  end

  # GET /_breves_jv_societes/1/edit
  def edit
  end

  # POST /_breves_jv_societes or /_breves_jv_societes.json
  def create
    @_breves_jv_societe = BrevesJvSociete.new(_breves_jv_societe_params)

    respond_to do |format|
      if @_breves_jv_societe.save
        format.html { redirect_to _breves_jv_societe_url(@_breves_jv_societe), notice: "Breves jv societe was successfully created." }
        format.json { render :show, status: :created, location: @_breves_jv_societe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_jv_societe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_jv_societes/1 or /_breves_jv_societes/1.json
  def update
    respond_to do |format|
      if @_breves_jv_societe.update(_breves_jv_societe_params)
        format.html { redirect_to _breves_jv_societe_url(@_breves_jv_societe), notice: "Breves jv societe was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_jv_societe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_jv_societe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_jv_societes/1 or /_breves_jv_societes/1.json
  def destroy
    @_breves_jv_societe.destroy!

    respond_to do |format|
      format.html { redirect_to _breves_jv_societes_url, notice: "Breves jv societe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_jv_societe
      @_breves_jv_societe = BrevesJvSociete.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_jv_societe_params
      params.require(:_breves_jv_societe).permit(:name)
    end
end
