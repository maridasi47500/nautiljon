class PhotobooksIllustrationsController < ApplicationController
  before_action :set__photobooks_illustration, only: %i[ show edit update destroy ]

  # GET /_photobooks_illustrations or /_photobooks_illustrations.json
  def index
    @_photobooks_illustrations = PhotobooksIllustration.all
  end

  # GET /_photobooks_illustrations/1 or /_photobooks_illustrations/1.json
  def show
  end

  # GET /_photobooks_illustrations/new
  def new
    @_photobooks_illustration = PhotobooksIllustration.new
  end

  # GET /_photobooks_illustrations/1/edit
  def edit
  end

  # POST /_photobooks_illustrations or /_photobooks_illustrations.json
  def create
    @_photobooks_illustration = PhotobooksIllustration.new(_photobooks_illustration_params)

    respond_to do |format|
      if @_photobooks_illustration.save
        format.html { redirect_to photobooks_illustration_url(@_photobooks_illustration), notice: "Photobooks illustration was successfully created." }
        format.json { render :show, status: :created, location: @_photobooks_illustration }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_photobooks_illustration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_photobooks_illustrations/1 or /_photobooks_illustrations/1.json
  def update
    respond_to do |format|
      if @_photobooks_illustration.update(_photobooks_illustration_params)
        format.html { redirect_to photobooks_illustration_url(@_photobooks_illustration), notice: "Photobooks illustration was successfully updated." }
        format.json { render :show, status: :ok, location: @_photobooks_illustration }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_photobooks_illustration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_photobooks_illustrations/1 or /_photobooks_illustrations/1.json
  def destroy
    @_photobooks_illustration.destroy!

    respond_to do |format|
      format.html { redirect_to photobooks_illustrations_url, notice: "Photobooks illustration was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__photobooks_illustration
      @_photobooks_illustration = PhotobooksIllustration.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _photobooks_illustration_params
      params.require(:photobooks_illustration).permit(:name)
    end
end
