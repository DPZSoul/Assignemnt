<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <div id="error"></div>
<form id="form" action="/" method="GET">
  <div>
    <label for="name">Name</label>
    <input id="name" name="name" type="text" required>
  </div>
  <div>
    <label for="badge">Bagd number</label>
    <input id="badge" name="badge" type="badge">
  </div>
  <button type="submit">Submit</button>
</form>
  

</html>
<script>
const name = document.getElementById('name')
const badge = document.getElementById('badge')
const form = document.getElementById('form')
const errorElement = document.getElementById('error')

form.addEventListener('submit', (e) => {
  let messages = []
  if (name.value === '' || name.value == null) {
    messages.push('Name is required')
  }

  if (badge .value.length <= 3) {
    messages.push('badge  must be longer than 3 characters')
  }

  if (badge .value.length >= 20) {
    messages.push('badge must be less than 20 characters')
  }

  if (badge .value === 'badge') {
    messages.push('badge number  cannot be found')
  }

  if (messages.length > 0) {
    e.preventDefault()
    errorElement.innerText = messages.join(', ')
  }
})

</script>
</body>
</html>
