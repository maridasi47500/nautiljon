class ArtbooksJvsController < ApplicationController
  before_action :set_artbooks_jv, only: %i[ show edit update destroy ]

  # GET /artbooks_jvs or /artbooks_jvs.json
  def index
    @artbooks_jvs = ArtbooksJv.all
  end

  # GET /artbooks_jvs/1 or /artbooks_jvs/1.json
  def show
  end

  # GET /artbooks_jvs/new
  def new
    @artbooks_jv = ArtbooksJv.new
  end

  # GET /artbooks_jvs/1/edit
  def edit
  end

  # POST /artbooks_jvs or /artbooks_jvs.json
  def create
    @artbooks_jv = ArtbooksJv.new(artbooks_jv_params)

    respond_to do |format|
      if @artbooks_jv.save
        format.html { redirect_to artbooks_jv_url(@artbooks_jv), notice: "Artbooks jv was successfully created." }
        format.json { render :show, status: :created, location: @artbooks_jv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbooks_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks_jvs/1 or /artbooks_jvs/1.json
  def update
    respond_to do |format|
      if @artbooks_jv.update(artbooks_jv_params)
        format.html { redirect_to artbooks_jv_url(@artbooks_jv), notice: "Artbooks jv was successfully updated." }
        format.json { render :show, status: :ok, location: @artbooks_jv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbooks_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks_jvs/1 or /artbooks_jvs/1.json
  def destroy
    @artbooks_jv.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_jvs_url, notice: "Artbooks jv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbooks_jv
      @artbooks_jv = ArtbooksJv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbooks_jv_params
      params.require(:artbooks_jv).permit(:name)
    end
end
