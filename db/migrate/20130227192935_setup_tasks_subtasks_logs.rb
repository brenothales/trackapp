class SetupTasksSubtasksLogs < ActiveRecord::Migration
  def change

    create_table :tasks do |t|
      t.string :name
    end

    create_table :subtasks do |t|
      t.string :name
      t.boolean :done
      t.references :task, index: true
      t.timestamps
    end

    create_table :logs do |t|
      t.references :subtask, index: true
      t.timestamp :start
      t.timestamp :stop
    end

  end
end
