class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      redirect_to contacts_path, notice: 'Contact added successfully'
    else
      flash.now[:error] = 'Some error ocurred with this contact, please correct and try again'
      render :new
    end
  end

  def update
  end

  def edit
  end

  def show
    @contact = Contact.find(params[:id])
  end

end
