$('.logs-<%=@subtask.id%>').parents('.subtask:first').replaceWith '<%= j(render @subtask) %>'
notice $('.subtask-<%= @subtask.id %>'), '#fff68f'
$('.task-time').html '<%= j(format_logged(@subtask.task.logged)) %>'
notice $('.task-time'), '#fff68f'
toggable $('.subtask-<%=@subtask.id%>')
