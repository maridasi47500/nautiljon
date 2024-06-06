class DoujinshisTypesController < ApplicationController
  before_action :set__doujinshis_type, only: %i[ show edit update destroy ]

  # GET /_doujinshis_types or /_doujinshis_types.json
  def index
    @_doujinshis_types = DoujinshisType.all
  end

  # GET /_doujinshis_types/1 or /_doujinshis_types/1.json
  def show
  end

  # GET /_doujinshis_types/new
  def new
    @_doujinshis_type = DoujinshisType.new
  end

  # GET /_doujinshis_types/1/edit
  def edit
  end

  # POST /_doujinshis_types or /_doujinshis_types.json
  def create
    @_doujinshis_type = DoujinshisType.new(_doujinshis_type_params)

    respond_to do |format|
      if @_doujinshis_type.save
        format.html { redirect_to _doujinshis_type_url(@_doujinshis_type), notice: "Doujinshis type was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_types/1 or /_doujinshis_types/1.json
  def update
    respond_to do |format|
      if @_doujinshis_type.update(_doujinshis_type_params)
        format.html { redirect_to _doujinshis_type_url(@_doujinshis_type), notice: "Doujinshis type was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_types/1 or /_doujinshis_types/1.json
  def destroy
    @_doujinshis_type.destroy!

    respond_to do |format|
      format.html { redirect_to _doujinshis_types_url, notice: "Doujinshis type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_type
      @_doujinshis_type = DoujinshisType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_type_params
      params.require(:_doujinshis_type).permit(:name)
    end
end
