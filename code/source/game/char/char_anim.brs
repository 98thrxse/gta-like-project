function char_anim(object)
  
	object.onCreate = function(args)

		' getInstanceByName
		m.entity_wnd = m.game.getInstanceByName("char_entity")

	end function

	object.onButton = function(code as integer)

		' held
        if code = 1006 ' select
			if m.game.getFocusGroup() = "char"
				if m.game.char.getSP() >= m.game.char.getSPDamage()
					m.playAnim([11,12,13,14,13,12,11,15,16,17,16,15,11,18,19,20,19,18,11])
				else
					m.playAnim([10])
				end if
			end if

		else if code = 1002 ' up
			if m.game.getFocusGroup() = "char"
				m.playAnim([3,0,4])
			end if

		else if code = 1003 ' down
			if m.game.getFocusGroup() = "char"
				m.playAnim([5,1,6])
			end if

		else if code = 1004 ' left
			if m.game.getFocusGroup() = "char"
				m.playAnim([7,2,8])
			end if

		else if code = 1005 ' right
			if m.game.getFocusGroup() = "char"
				m.playAnim([7,2,8])
			end if

		' released
		else if code = 106 ' select
			if m.game.getFocusGroup() = "char"
				if m.game.char.getSP() >= m.game.char.getSPDamage()
					m.playAnim([11])
				else
					m.playAnim([10])

				end if

			end if

		else if code = 102 ' up
			if m.game.getFocusGroup() = "char"
				m.timer = invalid
				m.playAnim([0])

			end if
			
		else if code = 103 ' down
			if m.game.getFocusGroup() = "char"
				m.timer = invalid
				m.playAnim([1])
			
			end if

		else if code = 104 ' left
			if m.game.getFocusGroup() = "char"
				m.timer = invalid
				m.playAnim([2])
			
			end if

		else if code = 105 ' right
			if m.game.getFocusGroup() = "char"
				m.timer = invalid
				m.playAnim([2])

			end if

		end if

	end function

	object.playAnim = function(arr)

		if m.timer = invalid
			m.timer = CreateObject("roTimeSpan")
			m.timer.Mark()
		end if

		if m.timer.TotalMilliseconds() + 1 >= arr.Count() * m.game.char.getAnimTime() then m.timer.Mark()
		m.game.char.setIndex(arr[int(m.timer.TotalMilliseconds() / m.game.char.getAnimTime())])


	end function

	object.onUpdate = function(dt as float)

        m.animUpdate()

    end function


    object.animUpdate = function()

        if m.entity_wnd.getImage(m.game.char.getEntityName()) <> invalid

			' update char alpha
			if m.entity_wnd.getImage(m.game.char.getEntityName()).alpha <> m.game.char.getAlpha() then m.entity_wnd.getImage("char_entity").alpha = m.game.char.getAlpha()
			if m.entity_wnd.getImage(m.game.char.getEntityName()).index <> m.game.char.getIndex() then m.entity_wnd.getImage("char_entity").index = m.game.char.getIndex()
			if m.entity_wnd.getImage(m.game.char.getEntityName()).scale_x <> m.game.char.getScaleX() then m.entity_wnd.getImage("char_entity").scale_x = m.game.char.getScaleX()
			if m.entity_wnd.getImage(m.game.char.getEntityName()).scale_y <> m.game.char.getScaleY() then m.entity_wnd.getImage("char_entity").scale_y = m.game.char.getScaleY()
			if m.entity_wnd.getImage(m.game.char.getEntityName()).offset_x <> m.game.char.getEntityOffsetX() then m.entity_wnd.getImage("char_entity").offset_x = m.game.char.getEntityOffsetX()
			if m.entity_wnd.getImage(m.game.char.getEntityName()).offset_y <> m.game.char.getEntityOffsetY() then m.entity_wnd.getImage("char_entity").offset_y = m.game.char.getEntityOffsetY()

        end if
        
    end function
    
end function