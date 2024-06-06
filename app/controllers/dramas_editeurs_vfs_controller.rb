class DramasEditeursVfsController < ApplicationController
  before_action :set__dramas_editeurs_vf, only: %i[ show edit update destroy ]

  # GET /_dramas_editeurs_vfs or /_dramas_editeurs_vfs.json
  def index
    @_dramas_editeurs_vfs = DramasEditeursVf.all
  end

  # GET /_dramas_editeurs_vfs/1 or /_dramas_editeurs_vfs/1.json
  def show
  end

  # GET /_dramas_editeurs_vfs/new
  def new
    @_dramas_editeurs_vf = DramasEditeursVf.new
  end

  # GET /_dramas_editeurs_vfs/1/edit
  def edit
  end

  # POST /_dramas_editeurs_vfs or /_dramas_editeurs_vfs.json
  def create
    @_dramas_editeurs_vf = DramasEditeursVf.new(_dramas_editeurs_vf_params)

    respond_to do |format|
      if @_dramas_editeurs_vf.save
        format.html { redirect_to dramas_editeurs_vf_url(@_dramas_editeurs_vf), notice: "Dramas editeurs vf was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_editeurs_vf }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_editeurs_vf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_editeurs_vfs/1 or /_dramas_editeurs_vfs/1.json
  def update
    respond_to do |format|
      if @_dramas_editeurs_vf.update(_dramas_editeurs_vf_params)
        format.html { redirect_to dramas_editeurs_vf_url(@_dramas_editeurs_vf), notice: "Dramas editeurs vf was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_editeurs_vf }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_editeurs_vf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_editeurs_vfs/1 or /_dramas_editeurs_vfs/1.json
  def destroy
    @_dramas_editeurs_vf.destroy!

    respond_to do |format|
      format.html { redirect_to dramas_editeurs_vfs_url, notice: "Dramas editeurs vf was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_editeurs_vf
      @_dramas_editeurs_vf = DramasEditeursVf.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_editeurs_vf_params
      params.require(:dramas_editeurs_vf).permit(:name)
    end
end
