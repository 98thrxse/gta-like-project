function char_main(object)

    object.onCreate = function(args)

		m.game.char = char_data(m.game.ver)

        ' createInstance
        m.game.createInstance("char_entity")
        m.game.createInstance("char_col")
        m.game.createInstance("char_control")
        m.game.createInstance("char_anim")

    end function

    object.onUpdate = function(dt as float)

        m.game.char.save()

    end function
    
end function