class AmvsConventionsController < ApplicationController
  before_action :set_amvs_convention, only: %i[ show edit update destroy ]

  # GET /amvs_conventions or /amvs_conventions.json
  def index
    @amvs_conventions = AmvsConvention.all
  end

  # GET /amvs_conventions/1 or /amvs_conventions/1.json
  def show
  end

  # GET /amvs_conventions/new
  def new
    @amvs_convention = AmvsConvention.new
  end

  # GET /amvs_conventions/1/edit
  def edit
  end

  # POST /amvs_conventions or /amvs_conventions.json
  def create
    @amvs_convention = AmvsConvention.new(amvs_convention_params)

    respond_to do |format|
      if @amvs_convention.save
        format.html { redirect_to amvs_convention_url(@amvs_convention), notice: "Amvs convention was successfully created." }
        format.json { render :show, status: :created, location: @amvs_convention }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @amvs_convention.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amvs_conventions/1 or /amvs_conventions/1.json
  def update
    respond_to do |format|
      if @amvs_convention.update(amvs_convention_params)
        format.html { redirect_to amvs_convention_url(@amvs_convention), notice: "Amvs convention was successfully updated." }
        format.json { render :show, status: :ok, location: @amvs_convention }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @amvs_convention.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amvs_conventions/1 or /amvs_conventions/1.json
  def destroy
    @amvs_convention.destroy!

    respond_to do |format|
      format.html { redirect_to amvs_conventions_url, notice: "Amvs convention was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amvs_convention
      @amvs_convention = AmvsConvention.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def amvs_convention_params
      params.require(:amvs_convention).permit(:name)
    end
end
