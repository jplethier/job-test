require 'spec_helper'

describe ContactsController do
  let(:contact) { stub_model(Contact) }

  it 'index' do
    Contact.stub(all: [contact])
    get :index
    expect(assigns :contacts).to eq [contact]
  end

  it 'new' do
    Contact.stub(new: contact)
    get :new
    expect(assigns :contact).to eq contact
  end

  it 'show' do
    Contact.stub(find: contact)
    get :show, { id: contact.id }
    expect(assigns :contact).to eq contact
  end

  it 'edit' do
    Contact.stub(find: contact)
    get :edit, { id: contact.id }
    expect(assigns :contact).to eq contact
  end

  describe 'create' do
    let(:params)  { { contact: { first_name: 'f_name', last_name: 'l_name', email: 'email@a.com', phone: '123' } } }

    context 'successfully' do
      before do
        Contact.stub(new: contact)
        contact.stub(save: true)
      end

      it 'redirects to the contacts index page' do
        post :create, params
        expect(response).to redirect_to(contacts_path)
      end
    end

    context 'unsuccessfully' do
      before do
        Contact.stub(new: contact)
        contact.stub(save: false)
      end

      it 'renders the new page' do
        post :create, params
        expect(response).to render_template(:new)
      end
    end
  end

  describe 'update' do
    let(:params)  { { id: contact.id, contact: { first_name: 'f_name_changed', last_name: 'l_name', email: 'email@a.com', phone: '123' } } }

    context 'successfully' do
      before do
        Contact.stub(find: contact)
        contact.stub(update_attributes: true)
      end

      it 'redirects to the contacts index page' do
        put :update, params
        expect(response).to redirect_to(contacts_path)
      end
    end

    context 'unsuccessfully' do
      before do
        Contact.stub(find: contact)
        contact.stub(update_attributes: false)
      end

      it 'renders the new page' do
        put :update, params
        expect(response).to render_template(:edit)
      end
    end
  end
end
