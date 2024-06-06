class AmvsMakersController < ApplicationController
  before_action :set_amvs_maker, only: %i[ show edit update destroy ]

  # GET /amvs_makers or /amvs_makers.json
  def index
    @amvs_makers = AmvsMaker.all
  end

  # GET /amvs_makers/1 or /amvs_makers/1.json
  def show
  end

  # GET /amvs_makers/new
  def new
    @amvs_maker = AmvsMaker.new
  end

  # GET /amvs_makers/1/edit
  def edit
  end

  # POST /amvs_makers or /amvs_makers.json
  def create
    @amvs_maker = AmvsMaker.new(amvs_maker_params)

    respond_to do |format|
      if @amvs_maker.save
        format.html { redirect_to amvs_maker_url(@amvs_maker), notice: "Amvs maker was successfully created." }
        format.json { render :show, status: :created, location: @amvs_maker }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @amvs_maker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amvs_makers/1 or /amvs_makers/1.json
  def update
    respond_to do |format|
      if @amvs_maker.update(amvs_maker_params)
        format.html { redirect_to amvs_maker_url(@amvs_maker), notice: "Amvs maker was successfully updated." }
        format.json { render :show, status: :ok, location: @amvs_maker }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @amvs_maker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amvs_makers/1 or /amvs_makers/1.json
  def destroy
    @amvs_maker.destroy!

    respond_to do |format|
      format.html { redirect_to amvs_makers_url, notice: "Amvs maker was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amvs_maker
      @amvs_maker = AmvsMaker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def amvs_maker_params
      params.require(:amvs_maker).permit(:name)
    end
end
