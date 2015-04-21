<% if @task.valid? %>

$('.tabs li').removeClass 'last'
$('.tabs').append '<li class=\"last\"><%= j(render @task) %></li>'
notice $('.task-<%= @task.id %>'), '#eaeaae'
$('.tabs input').val ''

<% else %>

notice $('.tabs input'), '#ff6666'
$('.tabs input').val ''
$('.tabs input').attr 'placeholder', '<%= @task.errors[:name].first %>'

<% end %>
