class BrevesConcoursController < ApplicationController
  before_action :set__breves_concour, only: %i[ show edit update destroy ]

  # GET /_breves_concours or /_breves_concours.json
  def index
    @_breves_concours = BrevesConcour.all
  end

  # GET /_breves_concours/1 or /_breves_concours/1.json
  def show
  end

  # GET /_breves_concours/new
  def new
    @_breves_concour = BrevesConcour.new
  end

  # GET /_breves_concours/1/edit
  def edit
  end

  # POST /_breves_concours or /_breves_concours.json
  def create
    @_breves_concour = BrevesConcour.new(_breves_concour_params)

    respond_to do |format|
      if @_breves_concour.save
        format.html { redirect_to breves_concour_url(@_breves_concour), notice: "Breves concour was successfully created." }
        format.json { render :show, status: :created, location: @_breves_concour }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_concour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_concours/1 or /_breves_concours/1.json
  def update
    respond_to do |format|
      if @_breves_concour.update(_breves_concour_params)
        format.html { redirect_to breves_concour_url(@_breves_concour), notice: "Breves concour was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_concour }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_concour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_concours/1 or /_breves_concours/1.json
  def destroy
    @_breves_concour.destroy!

    respond_to do |format|
      format.html { redirect_to breves_concours_url, notice: "Breves concour was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_concour
      @_breves_concour = BrevesConcour.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_concour_params
      params.require(:breves_concour).permit(:name)
    end
end
