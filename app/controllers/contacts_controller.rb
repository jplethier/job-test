class ContactsController < ApplicationController
  before_filter :find_contact, only: [:show, :edit, :update]
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
    if @contact.update_attributes(params[:contact])
      redirect_to contacts_path, notice: 'Contact updated successfully'
    else
      flash.now[:error] = 'Some error ocurred with this contact, please correct and try again'
      render :edit
    end
  end

  def edit
  end

  def show
  end

  protected

  def find_contact
    @contact = Contact.find(params[:id])
  end

end
