class PhotobooksEditeursVfsController < ApplicationController
  before_action :set__photobooks_editeurs_vf, only: %i[ show edit update destroy ]

  # GET /_photobooks_editeurs_vfs or /_photobooks_editeurs_vfs.json
  def index
    @_photobooks_editeurs_vfs = PhotobooksEditeursVf.all
  end

  # GET /_photobooks_editeurs_vfs/1 or /_photobooks_editeurs_vfs/1.json
  def show
  end

  # GET /_photobooks_editeurs_vfs/new
  def new
    @_photobooks_editeurs_vf = PhotobooksEditeursVf.new
  end

  # GET /_photobooks_editeurs_vfs/1/edit
  def edit
  end

  # POST /_photobooks_editeurs_vfs or /_photobooks_editeurs_vfs.json
  def create
    @_photobooks_editeurs_vf = PhotobooksEditeursVf.new(_photobooks_editeurs_vf_params)

    respond_to do |format|
      if @_photobooks_editeurs_vf.save
        format.html { redirect_to photobooks_editeurs_vf_url(@_photobooks_editeurs_vf), notice: "Photobooks editeurs vf was successfully created." }
        format.json { render :show, status: :created, location: @_photobooks_editeurs_vf }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_photobooks_editeurs_vf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_photobooks_editeurs_vfs/1 or /_photobooks_editeurs_vfs/1.json
  def update
    respond_to do |format|
      if @_photobooks_editeurs_vf.update(_photobooks_editeurs_vf_params)
        format.html { redirect_to photobooks_editeurs_vf_url(@_photobooks_editeurs_vf), notice: "Photobooks editeurs vf was successfully updated." }
        format.json { render :show, status: :ok, location: @_photobooks_editeurs_vf }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_photobooks_editeurs_vf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_photobooks_editeurs_vfs/1 or /_photobooks_editeurs_vfs/1.json
  def destroy
    @_photobooks_editeurs_vf.destroy!

    respond_to do |format|
      format.html { redirect_to photobooks_editeurs_vfs_url, notice: "Photobooks editeurs vf was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__photobooks_editeurs_vf
      @_photobooks_editeurs_vf = PhotobooksEditeursVf.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _photobooks_editeurs_vf_params
      params.require(:photobooks_editeurs_vf).permit(:name)
    end
end
