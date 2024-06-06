class PhotobooksPublicAvertisController < ApplicationController
  before_action :set__photobooks_public_averti, only: %i[ show edit update destroy ]

  # GET /_photobooks_public_avertis or /_photobooks_public_avertis.json
  def index
    @_photobooks_public_avertis = PhotobooksPublicAverti.all
  end

  # GET /_photobooks_public_avertis/1 or /_photobooks_public_avertis/1.json
  def show
  end

  # GET /_photobooks_public_avertis/new
  def new
    @_photobooks_public_averti = PhotobooksPublicAverti.new
  end

  # GET /_photobooks_public_avertis/1/edit
  def edit
  end

  # POST /_photobooks_public_avertis or /_photobooks_public_avertis.json
  def create
    @_photobooks_public_averti = PhotobooksPublicAverti.new(_photobooks_public_averti_params)

    respond_to do |format|
      if @_photobooks_public_averti.save
        format.html { redirect_to photobooks_public_averti_url(@_photobooks_public_averti), notice: "Photobooks public averti was successfully created." }
        format.json { render :show, status: :created, location: @_photobooks_public_averti }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_photobooks_public_averti.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_photobooks_public_avertis/1 or /_photobooks_public_avertis/1.json
  def update
    respond_to do |format|
      if @_photobooks_public_averti.update(_photobooks_public_averti_params)
        format.html { redirect_to photobooks_public_averti_url(@_photobooks_public_averti), notice: "Photobooks public averti was successfully updated." }
        format.json { render :show, status: :ok, location: @_photobooks_public_averti }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_photobooks_public_averti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_photobooks_public_avertis/1 or /_photobooks_public_avertis/1.json
  def destroy
    @_photobooks_public_averti.destroy!

    respond_to do |format|
      format.html { redirect_to photobooks_public_avertis_url, notice: "Photobooks public averti was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__photobooks_public_averti
      @_photobooks_public_averti = PhotobooksPublicAverti.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _photobooks_public_averti_params
      params.require(:photobooks_public_averti).permit(:name)
    end
end
