# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...






 <header>

    <% if user_signed_in? %>
      <li>
        <%= link_to "Log out", destroy_user_session_path, method: :delete %>
      </li>
    <% else %>
      <li>
        <%= link_to "Home", new_user_registration_path %>
      </li>
       <li>
        <%= link_to "About", new_user_registration_path %>
      </li>
      <li>
        <%= link_to "Sign up", new_user_registration_path %>
      </li>
      <li>
        <%= link_to "Log in", new_user_session_path %>
      </li>
    <% end %>
  </header>
  
  
  
   <%= f.text_field :tittle %>
   
   <%= f.text_area :body %>
   
   
   
   
   
   共通テンプ
   
    <p id="notice"></p>
   <div class="container px-5 px-sm-0">
    <div class="row">
      <div class="col-md-3">
        <h2>User info</h2>
        <%= image_tag @user.get_profile_image %>
        <table class="table">
          <tbody>
            <tr></tr>
            <tr>
              <th>name</th><th><%= @user.name %></th>
            </tr>
            <tr>
              <th>intrtoduction</th><th><%= @user.introduction %></th>
            </tr>
          </tbody>
        </table>
        
        
        
  #User/index
  <main>
   <p id="notice"></p>
   <div class="container px-5 px-sm-0">
    <div class="row">
      <div class="col-md-3">
        <h2>User info</h2>
        <%= image_tag @user.get_profile_image %>
        <table class="table">
          <tbody>
            <tr></tr>
            <tr>
              <th>name</th><th><%= @user.name %></th>
            </tr>
            <tr>
              <th>intrtoduction</th><th><%= @user.introduction %></th>
            </tr>
          </tbody>
        </table>

        <div class="row">
           <%= link_to edit_user_path(current_user.id),class:'btn btn-outline-secondary btn-block' do %>
           <i class="fas fa-user-cog"></i>
           <% end %>
       </div>
       <h2 class="mt-3">New book</h2>

  <%= form_with model: @book,method: :post do |f| %>
  <h6>Title</h6>
  <%= f.text_field :Title %>
  <h6>Opinion</h6>
  <%= f.text_area :Opinion %>

  <%= f.submit 'Create Book',class:'btn btn-success' %>
<% end %>

        <div class="row">
           <%= link_to edit_user_path(current_user.id),class:'btn btn-outline-secondary btn-block' do %>
           <i class="fas fa-user-cog"></i>
           <% end %>
       </div>
       <h2 class="mt-3">New book</h2>

  <%= form_with model: @book,method: :post do |f| %>
  <h6>Title</h6>
  <%= f.text_field :title %>
  <h6>Opinion</h6>
  <%= f.text_area :body %>

  <%= f.submit 'Create Book',class:'btn btn-success' %>
<% end %>


      </div>