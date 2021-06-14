export const updateTaskCompleted = () => {
  const tasks = document.querySelectorAll('.task_complete')
    tasks.forEach(task => {
      task.addEventListener('change', (e) => {
        e.target.form.submit()
      })
    })
}
