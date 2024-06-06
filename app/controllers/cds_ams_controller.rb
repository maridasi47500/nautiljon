class CdsAmsController < ApplicationController
  before_action :set__cds_am, only: %i[ show edit update destroy ]

  # GET /_cds_ams or /_cds_ams.json
  def index
    @_cds_ams = CdsAm.all
  end

  # GET /_cds_ams/1 or /_cds_ams/1.json
  def show
  end

  # GET /_cds_ams/new
  def new
    @_cds_am = CdsAm.new
  end

  # GET /_cds_ams/1/edit
  def edit
  end

  # POST /_cds_ams or /_cds_ams.json
  def create
    @_cds_am = CdsAm.new(_cds_am_params)

    respond_to do |format|
      if @_cds_am.save
        format.html { redirect_to cds_am_url(@_cds_am), notice: "Cds am was successfully created." }
        format.json { render :show, status: :created, location: @_cds_am }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_cds_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_cds_ams/1 or /_cds_ams/1.json
  def update
    respond_to do |format|
      if @_cds_am.update(_cds_am_params)
        format.html { redirect_to cds_am_url(@_cds_am), notice: "Cds am was successfully updated." }
        format.json { render :show, status: :ok, location: @_cds_am }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_cds_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_cds_ams/1 or /_cds_ams/1.json
  def destroy
    @_cds_am.destroy!

    respond_to do |format|
      format.html { redirect_to cds_ams_url, notice: "Cds am was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__cds_am
      @_cds_am = CdsAm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _cds_am_params
      params.require(:cds_am).permit(:name)
    end
end
