require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe FeaturedProjectsController do

  # This should return the minimal set of attributes required to create a valid
  # FeaturedProject. As you add validations to FeaturedProject, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FeaturedProjectsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all featured_projects as @featured_projects" do
      featured_project = FeaturedProject.create! valid_attributes
      get :index, {}, valid_session
      assigns(:featured_projects).should eq([featured_project])
    end
  end

  describe "GET show" do
    it "assigns the requested featured_project as @featured_project" do
      featured_project = FeaturedProject.create! valid_attributes
      get :show, {:id => featured_project.to_param}, valid_session
      assigns(:featured_project).should eq(featured_project)
    end
  end

  describe "GET new" do
    it "assigns a new featured_project as @featured_project" do
      get :new, {}, valid_session
      assigns(:featured_project).should be_a_new(FeaturedProject)
    end
  end

  describe "GET edit" do
    it "assigns the requested featured_project as @featured_project" do
      featured_project = FeaturedProject.create! valid_attributes
      get :edit, {:id => featured_project.to_param}, valid_session
      assigns(:featured_project).should eq(featured_project)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new FeaturedProject" do
        expect {
          post :create, {:featured_project => valid_attributes}, valid_session
        }.to change(FeaturedProject, :count).by(1)
      end

      it "assigns a newly created featured_project as @featured_project" do
        post :create, {:featured_project => valid_attributes}, valid_session
        assigns(:featured_project).should be_a(FeaturedProject)
        assigns(:featured_project).should be_persisted
      end

      it "redirects to the created featured_project" do
        post :create, {:featured_project => valid_attributes}, valid_session
        response.should redirect_to(FeaturedProject.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved featured_project as @featured_project" do
        # Trigger the behavior that occurs when invalid params are submitted
        FeaturedProject.any_instance.stub(:save).and_return(false)
        post :create, {:featured_project => {}}, valid_session
        assigns(:featured_project).should be_a_new(FeaturedProject)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        FeaturedProject.any_instance.stub(:save).and_return(false)
        post :create, {:featured_project => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested featured_project" do
        featured_project = FeaturedProject.create! valid_attributes
        # Assuming there are no other featured_projects in the database, this
        # specifies that the FeaturedProject created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        FeaturedProject.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => featured_project.to_param, :featured_project => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested featured_project as @featured_project" do
        featured_project = FeaturedProject.create! valid_attributes
        put :update, {:id => featured_project.to_param, :featured_project => valid_attributes}, valid_session
        assigns(:featured_project).should eq(featured_project)
      end

      it "redirects to the featured_project" do
        featured_project = FeaturedProject.create! valid_attributes
        put :update, {:id => featured_project.to_param, :featured_project => valid_attributes}, valid_session
        response.should redirect_to(featured_project)
      end
    end

    describe "with invalid params" do
      it "assigns the featured_project as @featured_project" do
        featured_project = FeaturedProject.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FeaturedProject.any_instance.stub(:save).and_return(false)
        put :update, {:id => featured_project.to_param, :featured_project => {}}, valid_session
        assigns(:featured_project).should eq(featured_project)
      end

      it "re-renders the 'edit' template" do
        featured_project = FeaturedProject.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FeaturedProject.any_instance.stub(:save).and_return(false)
        put :update, {:id => featured_project.to_param, :featured_project => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested featured_project" do
      featured_project = FeaturedProject.create! valid_attributes
      expect {
        delete :destroy, {:id => featured_project.to_param}, valid_session
      }.to change(FeaturedProject, :count).by(-1)
    end

    it "redirects to the featured_projects list" do
      featured_project = FeaturedProject.create! valid_attributes
      delete :destroy, {:id => featured_project.to_param}, valid_session
      response.should redirect_to(featured_projects_url)
    end
  end

end