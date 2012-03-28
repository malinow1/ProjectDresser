$(document).ready ->
  
  pants = 0
  start = 0
  end = 0

  $(document).mousedown (e) ->
    start = e.pageX
    $('#status1').html(e.pageY)
    if e.pageY > 270
      pants = 0
    else
      pants = 1

  posPants = 0
  posShirts = 0

  $(document).mouseup (e) ->

    end = e.pageX

    dif = end - start
    if dif > 0
      if pants == 0 && posPants > 0
        posPants--
        slideToLeft(191*posPants)
      if pants == 1 && posShirts > 0
        posShirts--
        slideToLeft(191*posShirts)
    else
      if  pants == 0 && posPants < 6
        posPants++
        slideToLeft(191*posPants)
      if pants == 1 && posShirts < 6
        posShirts++
        slideToLeft(191*posShirts)

  slideToLeft = (slidePos) ->
    if pants == 1
      $('#shirts').animate
        marginLeft: '-' + slidePos
    else
      $('#pants').animate
        marginLeft: '-' + slidePos
    
