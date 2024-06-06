class OstsMonnaiesController < ApplicationController
  before_action :set_osts_monnaie, only: %i[ show edit update destroy ]

  # GET /osts_monnaies or /osts_monnaies.json
  def index
    @osts_monnaies = OstsMonnaie.all
  end

  # GET /osts_monnaies/1 or /osts_monnaies/1.json
  def show
  end

  # GET /osts_monnaies/new
  def new
    @osts_monnaie = OstsMonnaie.new
  end

  # GET /osts_monnaies/1/edit
  def edit
  end

  # POST /osts_monnaies or /osts_monnaies.json
  def create
    @osts_monnaie = OstsMonnaie.new(osts_monnaie_params)

    respond_to do |format|
      if @osts_monnaie.save
        format.html { redirect_to osts_monnaie_url(@osts_monnaie), notice: "Osts monnaie was successfully created." }
        format.json { render :show, status: :created, location: @osts_monnaie }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @osts_monnaie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /osts_monnaies/1 or /osts_monnaies/1.json
  def update
    respond_to do |format|
      if @osts_monnaie.update(osts_monnaie_params)
        format.html { redirect_to osts_monnaie_url(@osts_monnaie), notice: "Osts monnaie was successfully updated." }
        format.json { render :show, status: :ok, location: @osts_monnaie }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @osts_monnaie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /osts_monnaies/1 or /osts_monnaies/1.json
  def destroy
    @osts_monnaie.destroy!

    respond_to do |format|
      format.html { redirect_to osts_monnaies_url, notice: "Osts monnaie was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_osts_monnaie
      @osts_monnaie = OstsMonnaie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def osts_monnaie_params
      params.require(:osts_monnaie).permit(:name)
    end
end
