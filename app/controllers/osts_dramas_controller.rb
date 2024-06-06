class OstsDramasController < ApplicationController
  before_action :set_osts_drama, only: %i[ show edit update destroy ]

  # GET /osts_dramas or /osts_dramas.json
  def index
    @osts_dramas = OstsDrama.all
  end

  # GET /osts_dramas/1 or /osts_dramas/1.json
  def show
  end

  # GET /osts_dramas/new
  def new
    @osts_drama = OstsDrama.new
  end

  # GET /osts_dramas/1/edit
  def edit
  end

  # POST /osts_dramas or /osts_dramas.json
  def create
    @osts_drama = OstsDrama.new(osts_drama_params)

    respond_to do |format|
      if @osts_drama.save
        format.html { redirect_to osts_drama_url(@osts_drama), notice: "Osts drama was successfully created." }
        format.json { render :show, status: :created, location: @osts_drama }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @osts_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /osts_dramas/1 or /osts_dramas/1.json
  def update
    respond_to do |format|
      if @osts_drama.update(osts_drama_params)
        format.html { redirect_to osts_drama_url(@osts_drama), notice: "Osts drama was successfully updated." }
        format.json { render :show, status: :ok, location: @osts_drama }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @osts_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /osts_dramas/1 or /osts_dramas/1.json
  def destroy
    @osts_drama.destroy!

    respond_to do |format|
      format.html { redirect_to osts_dramas_url, notice: "Osts drama was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_osts_drama
      @osts_drama = OstsDrama.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def osts_drama_params
      params.require(:osts_drama).permit(:name)
    end
end
