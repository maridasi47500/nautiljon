class OstsLabelsController < ApplicationController
  before_action :set_osts_label, only: %i[ show edit update destroy ]

  # GET /osts_labels or /osts_labels.json
  def index
    @osts_labels = OstsLabel.all
  end

  # GET /osts_labels/1 or /osts_labels/1.json
  def show
  end

  # GET /osts_labels/new
  def new
    @osts_label = OstsLabel.new
  end

  # GET /osts_labels/1/edit
  def edit
  end

  # POST /osts_labels or /osts_labels.json
  def create
    @osts_label = OstsLabel.new(osts_label_params)

    respond_to do |format|
      if @osts_label.save
        format.html { redirect_to osts_label_url(@osts_label), notice: "Osts label was successfully created." }
        format.json { render :show, status: :created, location: @osts_label }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @osts_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /osts_labels/1 or /osts_labels/1.json
  def update
    respond_to do |format|
      if @osts_label.update(osts_label_params)
        format.html { redirect_to osts_label_url(@osts_label), notice: "Osts label was successfully updated." }
        format.json { render :show, status: :ok, location: @osts_label }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @osts_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /osts_labels/1 or /osts_labels/1.json
  def destroy
    @osts_label.destroy!

    respond_to do |format|
      format.html { redirect_to osts_labels_url, notice: "Osts label was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_osts_label
      @osts_label = OstsLabel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def osts_label_params
      params.require(:osts_label).permit(:name)
    end
end
