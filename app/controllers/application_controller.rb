class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # Add routes
  get '/dogs' do
    dogs = Dog.all
    dogs.to_json
  end

  get '/applicants' do
    applicant = Applicant.all
    applicant.to_json(include: {
      dog: { only: [:name, :breed, :age, :trait]}
    })
  end

  post "/dogs" do
    dog = Dog.create(name: params[:name], breed: params[:breed], age: params[:age], trait: params[:trait])
    dog.to_json
  end
  
  patch "/applicants/:id" do
    applicant = Applicant.find(params[:id])
    applicant.update(dog_id: params[:dog_id])
    applicant.to_json
  end
  
  delete "/dogs/:id" do
    dog = Dog.find(params[:id])
    dog.destroy
    dog.to_json
  end

end
