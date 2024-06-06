class BrevesCdsController < ApplicationController
  before_action :set__breves_cd, only: %i[ show edit update destroy ]

  # GET /_breves_cds or /_breves_cds.json
  def index
    @_breves_cds = BrevesCd.all
  end

  # GET /_breves_cds/1 or /_breves_cds/1.json
  def show
  end

  # GET /_breves_cds/new
  def new
    @_breves_cd = BrevesCd.new
  end

  # GET /_breves_cds/1/edit
  def edit
  end

  # POST /_breves_cds or /_breves_cds.json
  def create
    @_breves_cd = BrevesCd.new(_breves_cd_params)

    respond_to do |format|
      if @_breves_cd.save
        format.html { redirect_to breves_cd_url(@_breves_cd), notice: "Breves cd was successfully created." }
        format.json { render :show, status: :created, location: @_breves_cd }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_cd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_cds/1 or /_breves_cds/1.json
  def update
    respond_to do |format|
      if @_breves_cd.update(_breves_cd_params)
        format.html { redirect_to breves_cd_url(@_breves_cd), notice: "Breves cd was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_cd }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_cd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_cds/1 or /_breves_cds/1.json
  def destroy
    @_breves_cd.destroy!

    respond_to do |format|
      format.html { redirect_to breves_cds_url, notice: "Breves cd was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_cd
      @_breves_cd = BrevesCd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_cd_params
      params.require(:breves_cd).permit(:name)
    end
end
