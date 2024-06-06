class BrevesSondagesController < ApplicationController
  before_action :set__breves_sondage, only: %i[ show edit update destroy ]

  # GET /_breves_sondages or /_breves_sondages.json
  def index
    @_breves_sondages = BrevesSondage.all
  end

  # GET /_breves_sondages/1 or /_breves_sondages/1.json
  def show
  end

  # GET /_breves_sondages/new
  def new
    @_breves_sondage = BrevesSondage.new
  end

  # GET /_breves_sondages/1/edit
  def edit
  end

  # POST /_breves_sondages or /_breves_sondages.json
  def create
    @_breves_sondage = BrevesSondage.new(_breves_sondage_params)

    respond_to do |format|
      if @_breves_sondage.save
        format.html { redirect_to breves_sondage_url(@_breves_sondage), notice: "Breves sondage was successfully created." }
        format.json { render :show, status: :created, location: @_breves_sondage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_sondage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_sondages/1 or /_breves_sondages/1.json
  def update
    respond_to do |format|
      if @_breves_sondage.update(_breves_sondage_params)
        format.html { redirect_to breves_sondage_url(@_breves_sondage), notice: "Breves sondage was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_sondage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_sondage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_sondages/1 or /_breves_sondages/1.json
  def destroy
    @_breves_sondage.destroy!

    respond_to do |format|
      format.html { redirect_to breves_sondages_url, notice: "Breves sondage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_sondage
      @_breves_sondage = BrevesSondage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_sondage_params
      params.require(:breves_sondage).permit(:name)
    end
end
