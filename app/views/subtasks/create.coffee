<% if @subtask.valid? %>

$('.taskpane').prepend '<%= j(render @subtask) %>'
notice $('.subtask-<%= @subtask.id %>'), '#eaeaae'
$('.subtask-create #name').val ''

<% else %>

notice $('.subtask-create #name'), '#ff6666'
$('.subtask-create #name').val ''
$('.subtask-create #name').attr 'placeholder', '<%= @subtask.errors[:name].first %>'

<% end %>
