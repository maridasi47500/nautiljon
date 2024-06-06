class BrevesAmvsController < ApplicationController
  before_action :set__breves_amv, only: %i[ show edit update destroy ]

  # GET /_breves_amvs or /_breves_amvs.json
  def index
    @_breves_amvs = BrevesAmv.all
  end

  # GET /_breves_amvs/1 or /_breves_amvs/1.json
  def show
  end

  # GET /_breves_amvs/new
  def new
    @_breves_amv = BrevesAmv.new
  end

  # GET /_breves_amvs/1/edit
  def edit
  end

  # POST /_breves_amvs or /_breves_amvs.json
  def create
    @_breves_amv = BrevesAmv.new(_breves_amv_params)

    respond_to do |format|
      if @_breves_amv.save
        format.html { redirect_to breves_amv_url(@_breves_amv), notice: "Breves amv was successfully created." }
        format.json { render :show, status: :created, location: @_breves_amv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_amv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_amvs/1 or /_breves_amvs/1.json
  def update
    respond_to do |format|
      if @_breves_amv.update(_breves_amv_params)
        format.html { redirect_to breves_amv_url(@_breves_amv), notice: "Breves amv was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_amv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_amv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_amvs/1 or /_breves_amvs/1.json
  def destroy
    @_breves_amv.destroy!

    respond_to do |format|
      format.html { redirect_to breves_amvs_url, notice: "Breves amv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_amv
      @_breves_amv = BrevesAmv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_amv_params
      params.require(:breves_amv).permit(:name)
    end
end
