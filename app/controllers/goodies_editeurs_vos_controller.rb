class GoodiesEditeursVosController < ApplicationController
  before_action :set__goodies_editeurs_vo, only: %i[ show edit update destroy ]

  # GET /_goodies_editeurs_vos or /_goodies_editeurs_vos.json
  def index
    @_goodies_editeurs_vos = GoodiesEditeursVo.all
  end

  # GET /_goodies_editeurs_vos/1 or /_goodies_editeurs_vos/1.json
  def show
  end

  # GET /_goodies_editeurs_vos/new
  def new
    @_goodies_editeurs_vo = GoodiesEditeursVo.new
  end

  # GET /_goodies_editeurs_vos/1/edit
  def edit
  end

  # POST /_goodies_editeurs_vos or /_goodies_editeurs_vos.json
  def create
    @_goodies_editeurs_vo = GoodiesEditeursVo.new(_goodies_editeurs_vo_params)

    respond_to do |format|
      if @_goodies_editeurs_vo.save
        format.html { redirect_to goodies_editeurs_vo_url(@_goodies_editeurs_vo), notice: "Goodies editeurs vo was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_editeurs_vo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_editeurs_vo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_editeurs_vos/1 or /_goodies_editeurs_vos/1.json
  def update
    respond_to do |format|
      if @_goodies_editeurs_vo.update(_goodies_editeurs_vo_params)
        format.html { redirect_to goodies_editeurs_vo_url(@_goodies_editeurs_vo), notice: "Goodies editeurs vo was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_editeurs_vo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_editeurs_vo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_editeurs_vos/1 or /_goodies_editeurs_vos/1.json
  def destroy
    @_goodies_editeurs_vo.destroy!

    respond_to do |format|
      format.html { redirect_to goodies_editeurs_vos_url, notice: "Goodies editeurs vo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_editeurs_vo
      @_goodies_editeurs_vo = GoodiesEditeursVo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_editeurs_vo_params
      params.require(:goodies_editeurs_vo).permit(:name)
    end
end
