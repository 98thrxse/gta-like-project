function char_init(object)

	object.onCreate = function(args)

		m.game.char = char_data()

		' defineObject
		m.game.defineObject("char_main", char_main)
		m.game.defineObject("char_media", char_media)
		m.game.defineObject("char_entity", char_entity)
		m.game.defineObject("char_anim", char_anim)
		m.game.defineObject("char_action", char_action)

		' createInstance
        m.game.createInstance("char_main")

	end function

end function