class FactoryElementsController < ApplicationController
  before_action :set_factory_element, only: [:show, :update, :destroy]

  # GET /factory_elements
  def index
    @factory_elements = FactoryElement.all

    render json: @factory_elements
  end

  # GET /factory_elements/1
  def show
    render json: @factory_element
  end

  # POST /factory_elements
  def create
    @factory_element = FactoryElement.new(factory_element_params)

    if @factory_element.save
      render json: @factory_element, status: :created, location: @factory_element
    else
      render json: @factory_element.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /factory_elements/1
  def update
    if @factory_element.update(factory_element_params)
      render json: @factory_element
    else
      render json: @factory_element.errors, status: :unprocessable_entity
    end
  end

  # DELETE /factory_elements/1
  def destroy
    @factory_element.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_factory_element
      @factory_element = FactoryElement.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def factory_element_params
      params.require(:factory_element).permit(:name, :state, :branch_id)
    end
end
