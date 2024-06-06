class OstsTypesController < ApplicationController
  before_action :set_osts_type, only: %i[ show edit update destroy ]

  # GET /osts_types or /osts_types.json
  def index
    @osts_types = OstsType.all
  end

  # GET /osts_types/1 or /osts_types/1.json
  def show
  end

  # GET /osts_types/new
  def new
    @osts_type = OstsType.new
  end

  # GET /osts_types/1/edit
  def edit
  end

  # POST /osts_types or /osts_types.json
  def create
    @osts_type = OstsType.new(osts_type_params)

    respond_to do |format|
      if @osts_type.save
        format.html { redirect_to osts_type_url(@osts_type), notice: "Osts type was successfully created." }
        format.json { render :show, status: :created, location: @osts_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @osts_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /osts_types/1 or /osts_types/1.json
  def update
    respond_to do |format|
      if @osts_type.update(osts_type_params)
        format.html { redirect_to osts_type_url(@osts_type), notice: "Osts type was successfully updated." }
        format.json { render :show, status: :ok, location: @osts_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @osts_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /osts_types/1 or /osts_types/1.json
  def destroy
    @osts_type.destroy!

    respond_to do |format|
      format.html { redirect_to osts_types_url, notice: "Osts type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_osts_type
      @osts_type = OstsType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def osts_type_params
      params.require(:osts_type).permit(:name)
    end
end
