class MangasEditeursVfsController < ApplicationController
  before_action :set__mangas_editeurs_vf, only: %i[ show edit update destroy ]

  # GET /_mangas_editeurs_vfs or /_mangas_editeurs_vfs.json
  def index
    @_mangas_editeurs_vfs = MangasEditeursVf.all
  end

  # GET /_mangas_editeurs_vfs/1 or /_mangas_editeurs_vfs/1.json
  def show
  end

  # GET /_mangas_editeurs_vfs/new
  def new
    @_mangas_editeurs_vf = MangasEditeursVf.new
  end

  # GET /_mangas_editeurs_vfs/1/edit
  def edit
  end

  # POST /_mangas_editeurs_vfs or /_mangas_editeurs_vfs.json
  def create
    @_mangas_editeurs_vf = MangasEditeursVf.new(_mangas_editeurs_vf_params)

    respond_to do |format|
      if @_mangas_editeurs_vf.save
        format.html { redirect_to _mangas_editeurs_vf_url(@_mangas_editeurs_vf), notice: "Mangas editeurs vf was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_editeurs_vf }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_editeurs_vf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_editeurs_vfs/1 or /_mangas_editeurs_vfs/1.json
  def update
    respond_to do |format|
      if @_mangas_editeurs_vf.update(_mangas_editeurs_vf_params)
        format.html { redirect_to _mangas_editeurs_vf_url(@_mangas_editeurs_vf), notice: "Mangas editeurs vf was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_editeurs_vf }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_editeurs_vf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_editeurs_vfs/1 or /_mangas_editeurs_vfs/1.json
  def destroy
    @_mangas_editeurs_vf.destroy!

    respond_to do |format|
      format.html { redirect_to _mangas_editeurs_vfs_url, notice: "Mangas editeurs vf was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_editeurs_vf
      @_mangas_editeurs_vf = MangasEditeursVf.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_editeurs_vf_params
      params.require(:_mangas_editeurs_vf).permit(:name)
    end
end
