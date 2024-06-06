class BrevesJvsController < ApplicationController
  before_action :set__breves_jv, only: %i[ show edit update destroy ]

  # GET /_breves_jvs or /_breves_jvs.json
  def index
    @_breves_jvs = BrevesJv.all
  end

  # GET /_breves_jvs/1 or /_breves_jvs/1.json
  def show
  end

  # GET /_breves_jvs/new
  def new
    @_breves_jv = BrevesJv.new
  end

  # GET /_breves_jvs/1/edit
  def edit
  end

  # POST /_breves_jvs or /_breves_jvs.json
  def create
    @_breves_jv = BrevesJv.new(_breves_jv_params)

    respond_to do |format|
      if @_breves_jv.save
        format.html { redirect_to _breves_jv_url(@_breves_jv), notice: "Breves jv was successfully created." }
        format.json { render :show, status: :created, location: @_breves_jv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_jvs/1 or /_breves_jvs/1.json
  def update
    respond_to do |format|
      if @_breves_jv.update(_breves_jv_params)
        format.html { redirect_to _breves_jv_url(@_breves_jv), notice: "Breves jv was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_jv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_jvs/1 or /_breves_jvs/1.json
  def destroy
    @_breves_jv.destroy!

    respond_to do |format|
      format.html { redirect_to _breves_jvs_url, notice: "Breves jv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_jv
      @_breves_jv = BrevesJv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_jv_params
      params.require(:_breves_jv).permit(:name)
    end
end
