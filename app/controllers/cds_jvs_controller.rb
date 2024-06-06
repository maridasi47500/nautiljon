class CdsJvsController < ApplicationController
  before_action :set__cds_jv, only: %i[ show edit update destroy ]

  # GET /_cds_jvs or /_cds_jvs.json
  def index
    @_cds_jvs = CdsJv.all
  end

  # GET /_cds_jvs/1 or /_cds_jvs/1.json
  def show
  end

  # GET /_cds_jvs/new
  def new
    @_cds_jv = CdsJv.new
  end

  # GET /_cds_jvs/1/edit
  def edit
  end

  # POST /_cds_jvs or /_cds_jvs.json
  def create
    @_cds_jv = CdsJv.new(_cds_jv_params)

    respond_to do |format|
      if @_cds_jv.save
        format.html { redirect_to cds_jv_url(@_cds_jv), notice: "Cds jv was successfully created." }
        format.json { render :show, status: :created, location: @_cds_jv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_cds_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_cds_jvs/1 or /_cds_jvs/1.json
  def update
    respond_to do |format|
      if @_cds_jv.update(_cds_jv_params)
        format.html { redirect_to cds_jv_url(@_cds_jv), notice: "Cds jv was successfully updated." }
        format.json { render :show, status: :ok, location: @_cds_jv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_cds_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_cds_jvs/1 or /_cds_jvs/1.json
  def destroy
    @_cds_jv.destroy!

    respond_to do |format|
      format.html { redirect_to cds_jvs_url, notice: "Cds jv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__cds_jv
      @_cds_jv = CdsJv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _cds_jv_params
      params.require(:cds_jv).permit(:name)
    end
end
