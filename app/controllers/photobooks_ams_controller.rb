class PhotobooksAmsController < ApplicationController
  before_action :set__photobooks_am, only: %i[ show edit update destroy ]

  # GET /_photobooks_ams or /_photobooks_ams.json
  def index
    @_photobooks_ams = PhotobooksAm.all
  end

  # GET /_photobooks_ams/1 or /_photobooks_ams/1.json
  def show
  end

  # GET /_photobooks_ams/new
  def new
    @_photobooks_am = PhotobooksAm.new
  end

  # GET /_photobooks_ams/1/edit
  def edit
  end

  # POST /_photobooks_ams or /_photobooks_ams.json
  def create
    @_photobooks_am = PhotobooksAm.new(_photobooks_am_params)

    respond_to do |format|
      if @_photobooks_am.save
        format.html { redirect_to photobooks_am_url(@_photobooks_am), notice: "Photobooks am was successfully created." }
        format.json { render :show, status: :created, location: @_photobooks_am }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_photobooks_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_photobooks_ams/1 or /_photobooks_ams/1.json
  def update
    respond_to do |format|
      if @_photobooks_am.update(_photobooks_am_params)
        format.html { redirect_to photobooks_am_url(@_photobooks_am), notice: "Photobooks am was successfully updated." }
        format.json { render :show, status: :ok, location: @_photobooks_am }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_photobooks_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_photobooks_ams/1 or /_photobooks_ams/1.json
  def destroy
    @_photobooks_am.destroy!

    respond_to do |format|
      format.html { redirect_to photobooks_ams_url, notice: "Photobooks am was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__photobooks_am
      @_photobooks_am = PhotobooksAm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _photobooks_am_params
      params.require(:photobooks_am).permit(:name)
    end
end
