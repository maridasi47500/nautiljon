class PhotobooksFrancesController < ApplicationController
  before_action :set__photobooks_france, only: %i[ show edit update destroy ]

  # GET /_photobooks_frances or /_photobooks_frances.json
  def index
    @_photobooks_frances = PhotobooksFrance.all
  end

  # GET /_photobooks_frances/1 or /_photobooks_frances/1.json
  def show
  end

  # GET /_photobooks_frances/new
  def new
    @_photobooks_france = PhotobooksFrance.new
  end

  # GET /_photobooks_frances/1/edit
  def edit
  end

  # POST /_photobooks_frances or /_photobooks_frances.json
  def create
    @_photobooks_france = PhotobooksFrance.new(_photobooks_france_params)

    respond_to do |format|
      if @_photobooks_france.save
        format.html { redirect_to _photobooks_france_url(@_photobooks_france), notice: "Photobooks france was successfully created." }
        format.json { render :show, status: :created, location: @_photobooks_france }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_photobooks_france.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_photobooks_frances/1 or /_photobooks_frances/1.json
  def update
    respond_to do |format|
      if @_photobooks_france.update(_photobooks_france_params)
        format.html { redirect_to _photobooks_france_url(@_photobooks_france), notice: "Photobooks france was successfully updated." }
        format.json { render :show, status: :ok, location: @_photobooks_france }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_photobooks_france.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_photobooks_frances/1 or /_photobooks_frances/1.json
  def destroy
    @_photobooks_france.destroy!

    respond_to do |format|
      format.html { redirect_to _photobooks_frances_url, notice: "Photobooks france was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__photobooks_france
      @_photobooks_france = PhotobooksFrance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _photobooks_france_params
      params.require(:_photobooks_france).permit(:name)
    end
end
