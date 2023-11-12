import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_todolist/providers/task_provider.dart';

void main() {
  group('TaskProvider', () {
    // Test untuk menambahkan tugas
    test('addTask should add a task to the list', () {
      final taskProvider = TaskProvider();
      
      // Menambahkan tugas dengan judul 'Test Task'
      taskProvider.addTask('Test Task');

      // Memastikan bahwa jumlah tugas setelah penambahan adalah 1
      expect(taskProvider.tasks.length, 1);
      
      // Memastikan bahwa judul tugas yang ditambahkan sesuai dengan yang diharapkan
      expect(taskProvider.tasks[0].title, 'Test Task');
    });

    // Test untuk mengganti status penyelesaian tugas
    test('toggleTask should toggle the completion status of a task', () {
      final taskProvider = TaskProvider();
      
      // Menambahkan tugas dengan judul 'Test Task'
      taskProvider.addTask('Test Task');

      // Mengaktifkan (true) status penyelesaian tugas dan memeriksa apakah berubah menjadi true
      taskProvider.toggleTask(0);
      expect(taskProvider.tasks[0].isCompleted, true);

      // Menonaktifkan (false) status penyelesaian tugas dan memeriksa apakah berubah menjadi false
      taskProvider.toggleTask(0);
      expect(taskProvider.tasks[0].isCompleted, false);
    });

    // Test untuk menghapus tugas
    test('removeTask should remove a task from the list', () {
      final taskProvider = TaskProvider();
      
      // Menambahkan tugas dengan judul 'Test Task'
      taskProvider.addTask('Test Task');

      // Menghapus tugas dan memeriksa apakah jumlah tugas menjadi 0
      taskProvider.removeTask(0);
      expect(taskProvider.tasks.length, 0);
    });

    // Test untuk mengedit judul tugas
    test('editTask should update the title of a task', () {
      final taskProvider = TaskProvider();
      
      // Menambahkan tugas dengan judul 'Test Task'
      taskProvider.addTask('Test Task');

      // Mengedit judul tugas menjadi 'Updated Task' dan memeriksa apakah judul tugas diperbarui dengan benar
      taskProvider.editTask(0, 'Updated Task');
      expect(taskProvider.tasks[0].title, 'Updated Task');
    });

    
  });
}
