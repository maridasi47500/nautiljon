class GoodiesCdsController < ApplicationController
  before_action :set__goodies_cd, only: %i[ show edit update destroy ]

  # GET /_goodies_cds or /_goodies_cds.json
  def index
    @_goodies_cds = GoodiesCd.all
  end

  # GET /_goodies_cds/1 or /_goodies_cds/1.json
  def show
  end

  # GET /_goodies_cds/new
  def new
    @_goodies_cd = GoodiesCd.new
  end

  # GET /_goodies_cds/1/edit
  def edit
  end

  # POST /_goodies_cds or /_goodies_cds.json
  def create
    @_goodies_cd = GoodiesCd.new(_goodies_cd_params)

    respond_to do |format|
      if @_goodies_cd.save
        format.html { redirect_to _goodies_cd_url(@_goodies_cd), notice: "Goodies cd was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_cd }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_cd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_cds/1 or /_goodies_cds/1.json
  def update
    respond_to do |format|
      if @_goodies_cd.update(_goodies_cd_params)
        format.html { redirect_to _goodies_cd_url(@_goodies_cd), notice: "Goodies cd was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_cd }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_cd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_cds/1 or /_goodies_cds/1.json
  def destroy
    @_goodies_cd.destroy!

    respond_to do |format|
      format.html { redirect_to _goodies_cds_url, notice: "Goodies cd was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_cd
      @_goodies_cd = GoodiesCd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_cd_params
      params.require(:_goodies_cd).permit(:name)
    end
end
