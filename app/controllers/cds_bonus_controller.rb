class CdsBonusController < ApplicationController
  before_action :set__cds_bonu, only: %i[ show edit update destroy ]

  # GET /_cds_bonus or /_cds_bonus.json
  def index
    @_cds_bonus = CdsBonu.all
  end

  # GET /_cds_bonus/1 or /_cds_bonus/1.json
  def show
  end

  # GET /_cds_bonus/new
  def new
    @_cds_bonu = CdsBonu.new
  end

  # GET /_cds_bonus/1/edit
  def edit
  end

  # POST /_cds_bonus or /_cds_bonus.json
  def create
    @_cds_bonu = CdsBonu.new(_cds_bonu_params)

    respond_to do |format|
      if @_cds_bonu.save
        format.html { redirect_to cds_bonu_url(@_cds_bonu), notice: "Cds bonu was successfully created." }
        format.json { render :show, status: :created, location: @_cds_bonu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_cds_bonu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_cds_bonus/1 or /_cds_bonus/1.json
  def update
    respond_to do |format|
      if @_cds_bonu.update(_cds_bonu_params)
        format.html { redirect_to cds_bonu_url(@_cds_bonu), notice: "Cds bonu was successfully updated." }
        format.json { render :show, status: :ok, location: @_cds_bonu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_cds_bonu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_cds_bonus/1 or /_cds_bonus/1.json
  def destroy
    @_cds_bonu.destroy!

    respond_to do |format|
      format.html { redirect_to cds_bonus_url, notice: "Cds bonu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__cds_bonu
      @_cds_bonu = CdsBonu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _cds_bonu_params
      params.require(:cds_bonu).permit(:name)
    end
end
