function npc_control(object)

  object.onCreate = function(args)

    ' getInstanceByName
    m.entity_wnd = m.game.getInstanceByName("npc_entity")
    m.col_wnd = m.game.getInstanceByName("npc_col")

  end function

  
  object.onButton = function(code as integer)

    ' held
    if code = 1002 ' up

      if m.game.char.getUpCol() = false and m.game.data.getFocus() = "char"
        m.entity_wnd.y += m.game.char.getUpSpeed()
        m.col_wnd.y += m.game.char.getUpSpeed()

      end if
                    
    else if code = 1003 ' down

      if m.game.char.getDownCol() = false and m.game.data.getFocus() = "char"
        m.entity_wnd.y -= m.game.char.getDownSpeed()
        m.col_wnd.y -= m.game.char.getDownSpeed()

      end if
        
        
    else if code = 1004 ' left

      if m.game.char.getLeftCol() = false and m.game.data.getFocus() = "char"
        m.entity_wnd.x += m.game.char.getLeftSpeed()
        m.col_wnd.x += m.game.char.getLeftSpeed()

      end if
        
    else if code = 1005 ' right

      if m.game.char.getRightCol() = false and m.game.data.getFocus() = "char"
        m.entity_wnd.x -= m.game.char.getRightSpeed()
        m.col_wnd.x -= m.game.char.getRightSpeed()

      end if
        
    end if

    ' released
    if code = 102
      if m.game.data.getFocus() = "char"
        m.game.char.setNPCCol(invalid)
      end if

    else if code = 103
      if m.game.data.getFocus() = "char"
        m.game.char.setNPCCol(invalid)
      end if

    else if code = 104
      if m.game.data.getFocus() = "char"
        m.game.char.setNPCCol(invalid)
      end if

    else if code = 105
      if m.game.data.getFocus() = "char"
        m.game.char.setNPCCol(invalid)
      end if

    end if

  end function
      
end function