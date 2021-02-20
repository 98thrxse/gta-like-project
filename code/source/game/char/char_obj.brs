function char_obj(object)

  object.onCreate = function(args)

    ' getInstanceByName
    m.media_wnd = m.game.getInstanceByName("char_media")
    
  ' addAnimatedImage
    m.obj = m.addAnimatedImage("char_obj", [m.media_wnd.stand_back_region, m.media_wnd.stand_front_region, m.media_wnd.stand_side_region, m.media_wnd.walk_back1_region, m.media_wnd.walk_back2_region, m.media_wnd.walk_front1_region, m.media_wnd.walk_front2_region, m.media_wnd.walk_side1_region, m.media_wnd.walk_side2_region, m.media_wnd.beaten_region], { index: m.game.char.getAnim()
      offset_x: 640 - m.media_wnd.stand_front_region.GetWidth() / 2,
      offset_y: 360
    })

    ' addColliderRectangle
    m.addColliderRectangle("char_col_up", m.obj.offset_x + 3, m.obj.offset_y + m.media_wnd.stand_back_region.GetHeight() / 2, m.media_wnd.stand_back_region.GetWidth() - 6, 1)
    m.addColliderRectangle("char_col_down", m.obj.offset_x + 3, m.obj.offset_y + m.media_wnd.stand_back_region.GetHeight() / 2 + m.media_wnd.stand_back_region.GetHeight() / 7 + 1, m.media_wnd.stand_back_region.GetWidth() - 6, 1)
    m.addColliderRectangle("char_col_left", m.obj.offset_x, m.obj.offset_y + m.media_wnd.stand_back_region.GetHeight() / 2 + 3, 1, m.media_wnd.stand_back_region.GetHeight() / 14)
    m.addColliderRectangle("char_col_right", m.obj.offset_x + m.media_wnd.stand_back_region.GetWidth() - 1, m.obj.offset_y + m.media_wnd.stand_back_region.GetHeight() / 2 + 3, 1, m.media_wnd.stand_back_region.GetHeight() / 14)

  end function

  
  object.onDrawEnd = function(canvas)

    canvas.DrawRect(m.obj.offset_x + 3, m.obj.offset_y + m.media_wnd.stand_back_region.GetHeight() / 2, m.media_wnd.stand_back_region.GetWidth() - 6, 1, &hFFFFFFFF)
    canvas.DrawRect(m.obj.offset_x + 3, m.obj.offset_y + m.media_wnd.stand_back_region.GetHeight() / 2 + m.media_wnd.stand_back_region.GetHeight() / 7 + 1, m.media_wnd.stand_back_region.GetWidth() - 6, 1, &hFFFFFFFF)
    canvas.DrawRect(m.obj.offset_x, m.obj.offset_y + m.media_wnd.stand_back_region.GetHeight() / 2 + 3, 1, m.media_wnd.stand_back_region.GetHeight() / 14, &hFFFFFFFF)
    canvas.DrawRect(m.obj.offset_x + m.media_wnd.stand_back_region.GetWidth() - 1, m.obj.offset_y + m.media_wnd.stand_back_region.GetHeight() / 2 + 3, 1, m.media_wnd.stand_back_region.GetHeight() / 14, &hFFFFFFFF)

  end function


  object.onButton = function(code as integer)

		' pressed
    if code = 2 ' up
      if m.obj.scale_x <> 1.0
        m.obj.offset_x -= m.media_wnd.stand_front_region.GetWidth()
      end if
      m.obj.scale_x = 1.0

    else if code = 3 ' down
      if m.obj.scale_x <> 1.0
        m.obj.offset_x -= m.media_wnd.stand_front_region.GetWidth()
      end if
      m.obj.scale_x = 1.0

    else if code = 4 ' left
      if m.obj.scale_x <> -1.0
        m.obj.offset_x += m.media_wnd.stand_front_region.GetWidth()
        m.obj.scale_x = -1.0

      end if

		else if code = 5 ' right
      if m.obj.scale_x <> 1.0
        m.obj.offset_x -= m.media_wnd.stand_front_region.GetWidth()
        m.obj.scale_x = 1.0

      end if
      
		end if

	end function
    
end function