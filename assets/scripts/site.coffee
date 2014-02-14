createRiders = (temp) ->
  riders = Math.round(temp*.2) + 1
  riders = 1 if temp < 0
  i = '<div class="rider"><img src="assets/images/rider-left.png"></div>'
  $('.riders').append(i) for [1..riders]

updateTemp = (temp) ->
  if temp > 32
    $('body').removeClass('freezing')
  else
    $('body').addClass('freezing')
  temp = Math.round((temp-32)/1.8000) if $('#actual_temp').hasClass('celsius')
  $('#actual_temp .temp').text(temp)


updateDisplay = (temp) ->
  createRiders(temp)
  setTimeout ( ->
    $('.background').removeClass('transitioning')
    ), 300

initializer = ->
  initial_temp = 60

  $('#temp_input')
    .slider
      orientation: 'vertical'
      selection: "after"
      value: initial_temp
      min: -20
      max: 110
      reversed: true
      tooltip: 'hide'
      formater: (e) -> 
        updateTemp(e)
    .on 'slideStart', ->
      $('.background').addClass('moving')
    .on 'slideStop', (e) ->
      $('.riders').empty()
      $('.background').addClass('transitioning').removeClass('moving')
      updateDisplay(e.value)

  createRiders(initial_temp)



$(document).ready ->
  initializer()

  $('.light').css('height', $('.light').css('width'))
  
  $('#actual_temp').click (e) ->
    e.preventDefault()
    $('#actual_temp').toggleClass('celsius')
    updateTemp($('#temp_input').slider('getValue'))