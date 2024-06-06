class VolumesTypesController < ApplicationController
  before_action :set__volumes_type, only: %i[ show edit update destroy ]

  # GET /_volumes_types or /_volumes_types.json
  def index
    @_volumes_types = VolumesType.all
  end

  # GET /_volumes_types/1 or /_volumes_types/1.json
  def show
  end

  # GET /_volumes_types/new
  def new
    @_volumes_type = VolumesType.new
  end

  # GET /_volumes_types/1/edit
  def edit
  end

  # POST /_volumes_types or /_volumes_types.json
  def create
    @_volumes_type = VolumesType.new(_volumes_type_params)

    respond_to do |format|
      if @_volumes_type.save
        format.html { redirect_to _volumes_type_url(@_volumes_type), notice: "Volumes type was successfully created." }
        format.json { render :show, status: :created, location: @_volumes_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_volumes_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_volumes_types/1 or /_volumes_types/1.json
  def update
    respond_to do |format|
      if @_volumes_type.update(_volumes_type_params)
        format.html { redirect_to _volumes_type_url(@_volumes_type), notice: "Volumes type was successfully updated." }
        format.json { render :show, status: :ok, location: @_volumes_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_volumes_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_volumes_types/1 or /_volumes_types/1.json
  def destroy
    @_volumes_type.destroy!

    respond_to do |format|
      format.html { redirect_to _volumes_types_url, notice: "Volumes type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__volumes_type
      @_volumes_type = VolumesType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _volumes_type_params
      params.require(:_volumes_type).permit(:name)
    end
end
