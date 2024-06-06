class GoodiesEditeursVfsController < ApplicationController
  before_action :set__goodies_editeurs_vf, only: %i[ show edit update destroy ]

  # GET /_goodies_editeurs_vfs or /_goodies_editeurs_vfs.json
  def index
    @_goodies_editeurs_vfs = GoodiesEditeursVf.all
  end

  # GET /_goodies_editeurs_vfs/1 or /_goodies_editeurs_vfs/1.json
  def show
  end

  # GET /_goodies_editeurs_vfs/new
  def new
    @_goodies_editeurs_vf = GoodiesEditeursVf.new
  end

  # GET /_goodies_editeurs_vfs/1/edit
  def edit
  end

  # POST /_goodies_editeurs_vfs or /_goodies_editeurs_vfs.json
  def create
    @_goodies_editeurs_vf = GoodiesEditeursVf.new(_goodies_editeurs_vf_params)

    respond_to do |format|
      if @_goodies_editeurs_vf.save
        format.html { redirect_to goodies_editeurs_vf_url(@_goodies_editeurs_vf), notice: "Goodies editeurs vf was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_editeurs_vf }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_editeurs_vf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_editeurs_vfs/1 or /_goodies_editeurs_vfs/1.json
  def update
    respond_to do |format|
      if @_goodies_editeurs_vf.update(_goodies_editeurs_vf_params)
        format.html { redirect_to goodies_editeurs_vf_url(@_goodies_editeurs_vf), notice: "Goodies editeurs vf was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_editeurs_vf }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_editeurs_vf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_editeurs_vfs/1 or /_goodies_editeurs_vfs/1.json
  def destroy
    @_goodies_editeurs_vf.destroy!

    respond_to do |format|
      format.html { redirect_to goodies_editeurs_vfs_url, notice: "Goodies editeurs vf was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_editeurs_vf
      @_goodies_editeurs_vf = GoodiesEditeursVf.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_editeurs_vf_params
      params.require(:goodies_editeurs_vf).permit(:name)
    end
end
