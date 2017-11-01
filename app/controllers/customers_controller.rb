class CustomersController < OpenReadController
  before_action :set_customer, only: %i[update destroy]

  # GET /customers
  def index
    @customers = Customer.all

    render json: @customers
  end

  # GET /customers/1
  def show
    render json: Customer.find(params[:id])
  end

  # POST /customers
  def create
    @customer = current_user.customers.build(customer_params)

    if @customer.save
      render json: @customer, status: :created
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /customers/1
  def update
    if @customer.update(customer_params)
      head :no_content
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /customers/1
  def destroy
    @customer.destroy

    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = current_user.customers.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def customer_params
      params.require(:customer).permit(:allergies, :seat, :notes, :user_id)
    end
end
