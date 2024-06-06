class OstsAmsController < ApplicationController
  before_action :set_osts_am, only: %i[ show edit update destroy ]

  # GET /osts_ams or /osts_ams.json
  def index
    @osts_ams = OstsAm.all
  end

  # GET /osts_ams/1 or /osts_ams/1.json
  def show
  end

  # GET /osts_ams/new
  def new
    @osts_am = OstsAm.new
  end

  # GET /osts_ams/1/edit
  def edit
  end

  # POST /osts_ams or /osts_ams.json
  def create
    @osts_am = OstsAm.new(osts_am_params)

    respond_to do |format|
      if @osts_am.save
        format.html { redirect_to osts_am_url(@osts_am), notice: "Osts am was successfully created." }
        format.json { render :show, status: :created, location: @osts_am }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @osts_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /osts_ams/1 or /osts_ams/1.json
  def update
    respond_to do |format|
      if @osts_am.update(osts_am_params)
        format.html { redirect_to osts_am_url(@osts_am), notice: "Osts am was successfully updated." }
        format.json { render :show, status: :ok, location: @osts_am }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @osts_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /osts_ams/1 or /osts_ams/1.json
  def destroy
    @osts_am.destroy!

    respond_to do |format|
      format.html { redirect_to osts_ams_url, notice: "Osts am was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_osts_am
      @osts_am = OstsAm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def osts_am_params
      params.require(:osts_am).permit(:name)
    end
end
