### Daily report
2017/07/11
### Rails - CRUD Basic
#### Using partial
Using partial to clean up duplication in views
In edit page and new page have similar code for displaying form. We can use partial to remove this duplication. 
-	Create partial file contain code be duplicated.
-	Render that file in views.
*Create partial file `books/_form.html.erb`*
```erb
<%= form_for @book, html: {role: "form", multipart: true } do |f| %>
	<p>
		<%= f.label :bookname  %><br>
		<%= f.text_field :bookname , :class => 'form-control' , :placeholder => 'Book name' %>
	</p>
	<p>
		<%= f.label :author %><br>
		<%= f.text_field :author , :class => 'form-control' , :placeholder => 'Author' %>
	</p>
	<p>
		<%= f.label :price %><br>
		<%= f.text_field :price , :class => 'form-control' , :placeholder => 'Price' %>
	</p>
	<p>
		<%= f.label :image %><br>
		<%= f.file_field :image %>
	</p>
	<p>
		<%= f.submit (@book.persisted? ? 'Update' : 'Add') , :class => 'btn btn-primary' %>
	</p>
<% end %>
```
Update `books/edit.html.erb` view to use partial
```erb
<section class="panel">
  <header class="panel-heading">
    Forms
  </header>
  <div class="panel-body">
    <%= render 'form' %>
	<%= link_to "back", books_path %>
  </div>
</section>
```
-	If we want to create different  things between edit page and new page, we need to check where partial file be render like this:
	-	object.**new_record?** : render in new page if true
	-	object.**persisted?** : render in edit page if true   
#### Rendering collection
-	When we pass a collection to a partial. The partial will be inserted once for each member in collection.
-	Rendering collection can instead of method `.each` 
-	Object's name into partial is partial file's name

** Create `_user.html.erb` partial file 
```erb
<tr>
  <td><%= user['name'] %></td>
  <td><%= user['email'] %></td>
  <td>
    <div class="btn-group">
      <%= link_to "Detail", user_path(user) %> |
      <%= link_to "Edit", edit_user_path(user) %> |
      <%= link_to "Delete", user_path(user), method: :delete, data: {confirm: 'Are you sure?'} %>
    </div>
  </td> 
</tr>
```
** Render in index view
```erb
<table class="table table-striped table-advance table-hover">
	<tbody>
		<tr>
		   <th>User Name</th>
		   <th>Email</th>
		   <th>Action</th>
		</tr>
	</tbody>
	<%= render partial: "user", collection: @users %>
</table>
```


