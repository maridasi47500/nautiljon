class ArtbooksTypesController < ApplicationController
  before_action :set_artbooks_type, only: %i[ show edit update destroy ]

  # GET /artbooks_types or /artbooks_types.json
  def index
    @artbooks_types = ArtbooksType.all
  end

  # GET /artbooks_types/1 or /artbooks_types/1.json
  def show
  end

  # GET /artbooks_types/new
  def new
    @artbooks_type = ArtbooksType.new
  end

  # GET /artbooks_types/1/edit
  def edit
  end

  # POST /artbooks_types or /artbooks_types.json
  def create
    @artbooks_type = ArtbooksType.new(artbooks_type_params)

    respond_to do |format|
      if @artbooks_type.save
        format.html { redirect_to artbooks_type_url(@artbooks_type), notice: "Artbooks type was successfully created." }
        format.json { render :show, status: :created, location: @artbooks_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbooks_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks_types/1 or /artbooks_types/1.json
  def update
    respond_to do |format|
      if @artbooks_type.update(artbooks_type_params)
        format.html { redirect_to artbooks_type_url(@artbooks_type), notice: "Artbooks type was successfully updated." }
        format.json { render :show, status: :ok, location: @artbooks_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbooks_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks_types/1 or /artbooks_types/1.json
  def destroy
    @artbooks_type.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_types_url, notice: "Artbooks type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbooks_type
      @artbooks_type = ArtbooksType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbooks_type_params
      params.require(:artbooks_type).permit(:name)
    end
end
