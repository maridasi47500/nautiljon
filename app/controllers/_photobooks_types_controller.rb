class PhotobooksTypesController < ApplicationController
  before_action :set__photobooks_type, only: %i[ show edit update destroy ]

  # GET /_photobooks_types or /_photobooks_types.json
  def index
    @_photobooks_types = PhotobooksType.all
  end

  # GET /_photobooks_types/1 or /_photobooks_types/1.json
  def show
  end

  # GET /_photobooks_types/new
  def new
    @_photobooks_type = PhotobooksType.new
  end

  # GET /_photobooks_types/1/edit
  def edit
  end

  # POST /_photobooks_types or /_photobooks_types.json
  def create
    @_photobooks_type = PhotobooksType.new(_photobooks_type_params)

    respond_to do |format|
      if @_photobooks_type.save
        format.html { redirect_to _photobooks_type_url(@_photobooks_type), notice: "Photobooks type was successfully created." }
        format.json { render :show, status: :created, location: @_photobooks_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_photobooks_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_photobooks_types/1 or /_photobooks_types/1.json
  def update
    respond_to do |format|
      if @_photobooks_type.update(_photobooks_type_params)
        format.html { redirect_to _photobooks_type_url(@_photobooks_type), notice: "Photobooks type was successfully updated." }
        format.json { render :show, status: :ok, location: @_photobooks_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_photobooks_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_photobooks_types/1 or /_photobooks_types/1.json
  def destroy
    @_photobooks_type.destroy!

    respond_to do |format|
      format.html { redirect_to _photobooks_types_url, notice: "Photobooks type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__photobooks_type
      @_photobooks_type = PhotobooksType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _photobooks_type_params
      params.require(:_photobooks_type).permit(:name)
    end
end
