get "demo/index" #is short for 
match "demo/index", :to => "demo#index", :via => :get

Default Route Structure
:controller/:action/:id
students/edit/52 

root "demo#index" #default when nothing is matched

#add 
resources :blogpost #this will default all the REST CRUD actions like get, put, post, delete for 
GET /blogposts/index, index
GET /blogposts/:id, show
POST /blogposts, create
PATCH /blogposts/:id, update
GET /blogposts/:id/edit,  edit
DELETE /blogposts/:id, destroy