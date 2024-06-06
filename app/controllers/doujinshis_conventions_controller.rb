class DoujinshisConventionsController < ApplicationController
  before_action :set__doujinshis_convention, only: %i[ show edit update destroy ]

  # GET /_doujinshis_conventions or /_doujinshis_conventions.json
  def index
    @_doujinshis_conventions = DoujinshisConvention.all
  end

  # GET /_doujinshis_conventions/1 or /_doujinshis_conventions/1.json
  def show
  end

  # GET /_doujinshis_conventions/new
  def new
    @_doujinshis_convention = DoujinshisConvention.new
  end

  # GET /_doujinshis_conventions/1/edit
  def edit
  end

  # POST /_doujinshis_conventions or /_doujinshis_conventions.json
  def create
    @_doujinshis_convention = DoujinshisConvention.new(_doujinshis_convention_params)

    respond_to do |format|
      if @_doujinshis_convention.save
        format.html { redirect_to _doujinshis_convention_url(@_doujinshis_convention), notice: "Doujinshis convention was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_convention }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_convention.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_conventions/1 or /_doujinshis_conventions/1.json
  def update
    respond_to do |format|
      if @_doujinshis_convention.update(_doujinshis_convention_params)
        format.html { redirect_to _doujinshis_convention_url(@_doujinshis_convention), notice: "Doujinshis convention was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_convention }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_convention.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_conventions/1 or /_doujinshis_conventions/1.json
  def destroy
    @_doujinshis_convention.destroy!

    respond_to do |format|
      format.html { redirect_to _doujinshis_conventions_url, notice: "Doujinshis convention was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_convention
      @_doujinshis_convention = DoujinshisConvention.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_convention_params
      params.require(:_doujinshis_convention).permit(:name)
    end
end
