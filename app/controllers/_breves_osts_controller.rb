class BrevesOstsController < ApplicationController
  before_action :set__breves_ost, only: %i[ show edit update destroy ]

  # GET /_breves_osts or /_breves_osts.json
  def index
    @_breves_osts = BrevesOst.all
  end

  # GET /_breves_osts/1 or /_breves_osts/1.json
  def show
  end

  # GET /_breves_osts/new
  def new
    @_breves_ost = BrevesOst.new
  end

  # GET /_breves_osts/1/edit
  def edit
  end

  # POST /_breves_osts or /_breves_osts.json
  def create
    @_breves_ost = BrevesOst.new(_breves_ost_params)

    respond_to do |format|
      if @_breves_ost.save
        format.html { redirect_to _breves_ost_url(@_breves_ost), notice: "Breves ost was successfully created." }
        format.json { render :show, status: :created, location: @_breves_ost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_ost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_osts/1 or /_breves_osts/1.json
  def update
    respond_to do |format|
      if @_breves_ost.update(_breves_ost_params)
        format.html { redirect_to _breves_ost_url(@_breves_ost), notice: "Breves ost was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_ost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_ost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_osts/1 or /_breves_osts/1.json
  def destroy
    @_breves_ost.destroy!

    respond_to do |format|
      format.html { redirect_to _breves_osts_url, notice: "Breves ost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_ost
      @_breves_ost = BrevesOst.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_ost_params
      params.require(:_breves_ost).permit(:name)
    end
end
