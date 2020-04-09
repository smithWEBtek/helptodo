// document.addEventListener("DOMContentLoaded", function () {
$(()=>{
  console.log('user.js loaded ... ')
  userCard()
})

const userCard = () => {
  $('.user').on('click', (event) => {
      event.preventDefault()
      console.log('event: ', event)
  })
}
