class CdsLabelsController < ApplicationController
  before_action :set__cds_label, only: %i[ show edit update destroy ]

  # GET /_cds_labels or /_cds_labels.json
  def index
    @_cds_labels = CdsLabel.all
  end

  # GET /_cds_labels/1 or /_cds_labels/1.json
  def show
  end

  # GET /_cds_labels/new
  def new
    @_cds_label = CdsLabel.new
  end

  # GET /_cds_labels/1/edit
  def edit
  end

  # POST /_cds_labels or /_cds_labels.json
  def create
    @_cds_label = CdsLabel.new(_cds_label_params)

    respond_to do |format|
      if @_cds_label.save
        format.html { redirect_to _cds_label_url(@_cds_label), notice: "Cds label was successfully created." }
        format.json { render :show, status: :created, location: @_cds_label }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_cds_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_cds_labels/1 or /_cds_labels/1.json
  def update
    respond_to do |format|
      if @_cds_label.update(_cds_label_params)
        format.html { redirect_to _cds_label_url(@_cds_label), notice: "Cds label was successfully updated." }
        format.json { render :show, status: :ok, location: @_cds_label }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_cds_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_cds_labels/1 or /_cds_labels/1.json
  def destroy
    @_cds_label.destroy!

    respond_to do |format|
      format.html { redirect_to _cds_labels_url, notice: "Cds label was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__cds_label
      @_cds_label = CdsLabel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _cds_label_params
      params.require(:_cds_label).permit(:name)
    end
end
