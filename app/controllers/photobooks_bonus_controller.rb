class PhotobooksBonusController < ApplicationController
  before_action :set__photobooks_bonu, only: %i[ show edit update destroy ]

  # GET /_photobooks_bonus or /_photobooks_bonus.json
  def index
    @_photobooks_bonus = PhotobooksBonu.all
  end

  # GET /_photobooks_bonus/1 or /_photobooks_bonus/1.json
  def show
  end

  # GET /_photobooks_bonus/new
  def new
    @_photobooks_bonu = PhotobooksBonu.new
  end

  # GET /_photobooks_bonus/1/edit
  def edit
  end

  # POST /_photobooks_bonus or /_photobooks_bonus.json
  def create
    @_photobooks_bonu = PhotobooksBonu.new(_photobooks_bonu_params)

    respond_to do |format|
      if @_photobooks_bonu.save
        format.html { redirect_to photobooks_bonu_url(@_photobooks_bonu), notice: "Photobooks bonu was successfully created." }
        format.json { render :show, status: :created, location: @_photobooks_bonu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_photobooks_bonu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_photobooks_bonus/1 or /_photobooks_bonus/1.json
  def update
    respond_to do |format|
      if @_photobooks_bonu.update(_photobooks_bonu_params)
        format.html { redirect_to photobooks_bonu_url(@_photobooks_bonu), notice: "Photobooks bonu was successfully updated." }
        format.json { render :show, status: :ok, location: @_photobooks_bonu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_photobooks_bonu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_photobooks_bonus/1 or /_photobooks_bonus/1.json
  def destroy
    @_photobooks_bonu.destroy!

    respond_to do |format|
      format.html { redirect_to photobooks_bonus_url, notice: "Photobooks bonu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__photobooks_bonu
      @_photobooks_bonu = PhotobooksBonu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _photobooks_bonu_params
      params.require(:photobooks_bonu).permit(:name)
    end
end
