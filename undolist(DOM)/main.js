
// init
let list = document.querySelector('#my-todo')
const todos = ['Hit the gym', 'Read a book', 'Buy eggs', 'Organize office', 'Pay bills']
for (let todo of todos) {
  addItem(todo)
}

function addItem(text) {
  let newItem = document.createElement('li')
  newItem.innerHTML = `
    <label for="todo">${text}</label>
    <i class="delete fa fa-trash"></i>
  `
  list.appendChild(newItem)
}

// write your code here

const addbtn = document.querySelector('.btn')

addbtn.addEventListener('click', function () {
  if (document.querySelector('#newTodo').value !== "") {
    let newtodo = document.querySelector('#newTodo').value
    addItem(newtodo)
    document.querySelector('#newTodo').value = null
  }
})

let inputEnter = document.querySelector('#newTodo')

inputEnter.addEventListener('keypress', function (key) {
  if (document.querySelector('#newTodo').value !== "" && key.keyCode === 13) {
    let newtodobyenter = document.querySelector('#newTodo').value
    addItem(newtodobyenter)
    document.querySelector('#newTodo').value = null
  }
})


list.addEventListener('click', function (event) {
  if (event.target.classList.contains('delete')) {
    let li = event.target.parentElement
    li.remove()
  } else if (event.target.tagName === 'LABEL') {
    event.target.classList.toggle('checked')
    let li = event.target.parentElement
    let li_done = document.getElementById('my-done')
    li_done.append(li)
  }
})

let li_done = document.getElementById('my-done')
li_done.addEventListener('click', function (event) {
  if (event.target.classList.contains('delete')) {
    let li = event.target.parentElement
    li.remove()
  } else if (event.target.tagName === 'LABEL') {
    event.target.classList.toggle('checked')
    let li_done = event.target.parentElement
    let li = document.getElementById('my-todo')
    li.append(li_done)
  }
})

