class DoujinsConventionsController < ApplicationController
  before_action :set__doujins_convention, only: %i[ show edit update destroy ]

  # GET /_doujins_conventions or /_doujins_conventions.json
  def index
    @_doujins_conventions = DoujinsConvention.all
  end

  # GET /_doujins_conventions/1 or /_doujins_conventions/1.json
  def show
  end

  # GET /_doujins_conventions/new
  def new
    @_doujins_convention = DoujinsConvention.new
  end

  # GET /_doujins_conventions/1/edit
  def edit
  end

  # POST /_doujins_conventions or /_doujins_conventions.json
  def create
    @_doujins_convention = DoujinsConvention.new(_doujins_convention_params)

    respond_to do |format|
      if @_doujins_convention.save
        format.html { redirect_to _doujins_convention_url(@_doujins_convention), notice: "Doujins convention was successfully created." }
        format.json { render :show, status: :created, location: @_doujins_convention }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujins_convention.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujins_conventions/1 or /_doujins_conventions/1.json
  def update
    respond_to do |format|
      if @_doujins_convention.update(_doujins_convention_params)
        format.html { redirect_to _doujins_convention_url(@_doujins_convention), notice: "Doujins convention was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujins_convention }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujins_convention.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujins_conventions/1 or /_doujins_conventions/1.json
  def destroy
    @_doujins_convention.destroy!

    respond_to do |format|
      format.html { redirect_to _doujins_conventions_url, notice: "Doujins convention was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujins_convention
      @_doujins_convention = DoujinsConvention.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujins_convention_params
      params.require(:_doujins_convention).permit(:name)
    end
end
