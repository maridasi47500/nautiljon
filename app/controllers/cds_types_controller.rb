class CdsTypesController < ApplicationController
  before_action :set__cds_type, only: %i[ show edit update destroy ]

  # GET /_cds_types or /_cds_types.json
  def index
    @_cds_types = CdsType.all
  end

  # GET /_cds_types/1 or /_cds_types/1.json
  def show
  end

  # GET /_cds_types/new
  def new
    @_cds_type = CdsType.new
  end

  # GET /_cds_types/1/edit
  def edit
  end

  # POST /_cds_types or /_cds_types.json
  def create
    @_cds_type = CdsType.new(_cds_type_params)

    respond_to do |format|
      if @_cds_type.save
        format.html { redirect_to cds_type_url(@_cds_type), notice: "Cds type was successfully created." }
        format.json { render :show, status: :created, location: @_cds_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_cds_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_cds_types/1 or /_cds_types/1.json
  def update
    respond_to do |format|
      if @_cds_type.update(_cds_type_params)
        format.html { redirect_to cds_type_url(@_cds_type), notice: "Cds type was successfully updated." }
        format.json { render :show, status: :ok, location: @_cds_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_cds_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_cds_types/1 or /_cds_types/1.json
  def destroy
    @_cds_type.destroy!

    respond_to do |format|
      format.html { redirect_to cds_types_url, notice: "Cds type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__cds_type
      @_cds_type = CdsType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _cds_type_params
      params.require(:cds_type).permit(:name)
    end
end
