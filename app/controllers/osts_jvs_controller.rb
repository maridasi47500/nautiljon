class OstsJvsController < ApplicationController
  before_action :set_osts_jv, only: %i[ show edit update destroy ]

  # GET /osts_jvs or /osts_jvs.json
  def index
    @osts_jvs = OstsJv.all
  end

  # GET /osts_jvs/1 or /osts_jvs/1.json
  def show
  end

  # GET /osts_jvs/new
  def new
    @osts_jv = OstsJv.new
  end

  # GET /osts_jvs/1/edit
  def edit
  end

  # POST /osts_jvs or /osts_jvs.json
  def create
    @osts_jv = OstsJv.new(osts_jv_params)

    respond_to do |format|
      if @osts_jv.save
        format.html { redirect_to osts_jv_url(@osts_jv), notice: "Osts jv was successfully created." }
        format.json { render :show, status: :created, location: @osts_jv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @osts_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /osts_jvs/1 or /osts_jvs/1.json
  def update
    respond_to do |format|
      if @osts_jv.update(osts_jv_params)
        format.html { redirect_to osts_jv_url(@osts_jv), notice: "Osts jv was successfully updated." }
        format.json { render :show, status: :ok, location: @osts_jv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @osts_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /osts_jvs/1 or /osts_jvs/1.json
  def destroy
    @osts_jv.destroy!

    respond_to do |format|
      format.html { redirect_to osts_jvs_url, notice: "Osts jv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_osts_jv
      @osts_jv = OstsJv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def osts_jv_params
      params.require(:osts_jv).permit(:name)
    end
end
