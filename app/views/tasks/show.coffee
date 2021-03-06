<% if !@deleted.nil? %>

notice $('.task-<%= @deleted.id %>'), '#ff6666'
$('.task-<%= @deleted.id %>').hide 'slow'
$('.tabs li:last-child').prev('li').addClass 'last'
notice $('.task-<%= @task.id %>'), '#fff68f'

<% end %>

$('.taskpane').replaceWith '<div class="taskpane"><%= j(render @task.subtasks) %></div>'
$('.tabs li').removeClass 'active'
$('.task-<%= @task.id %>').parents('li:first').addClass 'active'
$('.subtask-create #task_id').val '<%= @task.id %>'
$('.task-delete').attr 'href', '<%= task_path(id: @task.id, format: 'js') %>'
$('.task-time').html '<%= j(format_logged(@task.logged)) %>'

toggable $('.subtask')
