class PhotobooksCdsController < ApplicationController
  before_action :set__photobooks_cd, only: %i[ show edit update destroy ]

  # GET /_photobooks_cds or /_photobooks_cds.json
  def index
    @_photobooks_cds = PhotobooksCd.all
  end

  # GET /_photobooks_cds/1 or /_photobooks_cds/1.json
  def show
  end

  # GET /_photobooks_cds/new
  def new
    @_photobooks_cd = PhotobooksCd.new
  end

  # GET /_photobooks_cds/1/edit
  def edit
  end

  # POST /_photobooks_cds or /_photobooks_cds.json
  def create
    @_photobooks_cd = PhotobooksCd.new(_photobooks_cd_params)

    respond_to do |format|
      if @_photobooks_cd.save
        format.html { redirect_to _photobooks_cd_url(@_photobooks_cd), notice: "Photobooks cd was successfully created." }
        format.json { render :show, status: :created, location: @_photobooks_cd }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_photobooks_cd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_photobooks_cds/1 or /_photobooks_cds/1.json
  def update
    respond_to do |format|
      if @_photobooks_cd.update(_photobooks_cd_params)
        format.html { redirect_to _photobooks_cd_url(@_photobooks_cd), notice: "Photobooks cd was successfully updated." }
        format.json { render :show, status: :ok, location: @_photobooks_cd }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_photobooks_cd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_photobooks_cds/1 or /_photobooks_cds/1.json
  def destroy
    @_photobooks_cd.destroy!

    respond_to do |format|
      format.html { redirect_to _photobooks_cds_url, notice: "Photobooks cd was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__photobooks_cd
      @_photobooks_cd = PhotobooksCd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _photobooks_cd_params
      params.require(:_photobooks_cd).permit(:name)
    end
end
