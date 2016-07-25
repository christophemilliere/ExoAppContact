class ContactsController < ApplicationController
  before_action :find_contact, only: [:show, :edit, :update, :destroy, :export]

  def index
    if params[:letter]
      @contact= Contact.search_contact(params[:letter])
    else
      @contact = Contact.order(lastname: :asc)
    end
  end

  def new
    @contact = Contact.new
  end
  
  def show
    respond_to do |format|
      format.html { render :show}
      format.pdf {
        render :pdf => "show", :layout => 'pdf.html'
      }
    end
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to contacts_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @contact.update(contact_params)
      redirect_to contacts_path
    else
      render :edit
    end
  end

  def destroy
    @contact.destroy
    redirect_to contacts_path
  end

  def export

  end

  def find_contact
    @contact = Contact.find_by(id: params[:id])
  end

  def contact_params
    params.require(:contact).permit(:firstname, :lastname, :phone, :address, :cp, :city, :tag_id, :avatar)
  end
end
