class ArtbooksLnsController < ApplicationController
  before_action :set_artbooks_ln, only: %i[ show edit update destroy ]

  # GET /artbooks_lns or /artbooks_lns.json
  def index
    @artbooks_lns = ArtbooksLn.all
  end

  # GET /artbooks_lns/1 or /artbooks_lns/1.json
  def show
  end

  # GET /artbooks_lns/new
  def new
    @artbooks_ln = ArtbooksLn.new
  end

  # GET /artbooks_lns/1/edit
  def edit
  end

  # POST /artbooks_lns or /artbooks_lns.json
  def create
    @artbooks_ln = ArtbooksLn.new(artbooks_ln_params)

    respond_to do |format|
      if @artbooks_ln.save
        format.html { redirect_to artbooks_ln_url(@artbooks_ln), notice: "Artbooks ln was successfully created." }
        format.json { render :show, status: :created, location: @artbooks_ln }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbooks_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks_lns/1 or /artbooks_lns/1.json
  def update
    respond_to do |format|
      if @artbooks_ln.update(artbooks_ln_params)
        format.html { redirect_to artbooks_ln_url(@artbooks_ln), notice: "Artbooks ln was successfully updated." }
        format.json { render :show, status: :ok, location: @artbooks_ln }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbooks_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks_lns/1 or /artbooks_lns/1.json
  def destroy
    @artbooks_ln.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_lns_url, notice: "Artbooks ln was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbooks_ln
      @artbooks_ln = ArtbooksLn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbooks_ln_params
      params.require(:artbooks_ln).permit(:name)
    end
end
