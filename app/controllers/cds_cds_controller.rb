class CdsCdsController < ApplicationController
  before_action :set__cds_cd, only: %i[ show edit update destroy ]

  # GET /_cds_cds or /_cds_cds.json
  def index
    @_cds_cds = CdsCd.all
  end

  # GET /_cds_cds/1 or /_cds_cds/1.json
  def show
  end

  # GET /_cds_cds/new
  def new
    @_cds_cd = CdsCd.new
  end

  # GET /_cds_cds/1/edit
  def edit
  end

  # POST /_cds_cds or /_cds_cds.json
  def create
    @_cds_cd = CdsCd.new(_cds_cd_params)

    respond_to do |format|
      if @_cds_cd.save
        format.html { redirect_to cds_cd_url(@_cds_cd), notice: "Cds cd was successfully created." }
        format.json { render :show, status: :created, location: @_cds_cd }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_cds_cd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_cds_cds/1 or /_cds_cds/1.json
  def update
    respond_to do |format|
      if @_cds_cd.update(_cds_cd_params)
        format.html { redirect_to cds_cd_url(@_cds_cd), notice: "Cds cd was successfully updated." }
        format.json { render :show, status: :ok, location: @_cds_cd }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_cds_cd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_cds_cds/1 or /_cds_cds/1.json
  def destroy
    @_cds_cd.destroy!

    respond_to do |format|
      format.html { redirect_to cds_cds_url, notice: "Cds cd was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__cds_cd
      @_cds_cd = CdsCd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _cds_cd_params
      params.require(:cds_cd).permit(:name)
    end
end
