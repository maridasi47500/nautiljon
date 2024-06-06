class BrevesAmsController < ApplicationController
  before_action :set__breves_am, only: %i[ show edit update destroy ]

  # GET /_breves_ams or /_breves_ams.json
  def index
    @_breves_ams = BrevesAm.all
  end

  # GET /_breves_ams/1 or /_breves_ams/1.json
  def show
  end

  # GET /_breves_ams/new
  def new
    @_breves_am = BrevesAm.new
  end

  # GET /_breves_ams/1/edit
  def edit
  end

  # POST /_breves_ams or /_breves_ams.json
  def create
    @_breves_am = BrevesAm.new(_breves_am_params)

    respond_to do |format|
      if @_breves_am.save
        format.html { redirect_to _breves_am_url(@_breves_am), notice: "Breves am was successfully created." }
        format.json { render :show, status: :created, location: @_breves_am }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_ams/1 or /_breves_ams/1.json
  def update
    respond_to do |format|
      if @_breves_am.update(_breves_am_params)
        format.html { redirect_to _breves_am_url(@_breves_am), notice: "Breves am was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_am }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_ams/1 or /_breves_ams/1.json
  def destroy
    @_breves_am.destroy!

    respond_to do |format|
      format.html { redirect_to _breves_ams_url, notice: "Breves am was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_am
      @_breves_am = BrevesAm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_am_params
      params.require(:_breves_am).permit(:name)
    end
end
