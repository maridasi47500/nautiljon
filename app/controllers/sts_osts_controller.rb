class OstsOstsController < ApplicationController
  before_action :set_osts_ost, only: %i[ show edit update destroy ]

  # GET /osts_osts or /osts_osts.json
  def index
    @osts_osts = OstsOst.all
  end

  # GET /osts_osts/1 or /osts_osts/1.json
  def show
  end

  # GET /osts_osts/new
  def new
    @osts_ost = OstsOst.new
  end

  # GET /osts_osts/1/edit
  def edit
  end

  # POST /osts_osts or /osts_osts.json
  def create
    @osts_ost = OstsOst.new(osts_ost_params)

    respond_to do |format|
      if @osts_ost.save
        format.html { redirect_to osts_ost_url(@osts_ost), notice: "Osts ost was successfully created." }
        format.json { render :show, status: :created, location: @osts_ost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @osts_ost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /osts_osts/1 or /osts_osts/1.json
  def update
    respond_to do |format|
      if @osts_ost.update(osts_ost_params)
        format.html { redirect_to osts_ost_url(@osts_ost), notice: "Osts ost was successfully updated." }
        format.json { render :show, status: :ok, location: @osts_ost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @osts_ost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /osts_osts/1 or /osts_osts/1.json
  def destroy
    @osts_ost.destroy!

    respond_to do |format|
      format.html { redirect_to osts_osts_url, notice: "Osts ost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_osts_ost
      @osts_ost = OstsOst.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def osts_ost_params
      params.require(:osts_ost).permit(:name)
    end
end
