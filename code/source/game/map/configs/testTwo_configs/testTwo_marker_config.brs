function testTwo_marker_config() as object
    config = [
        {
            id: 0,
            name: "marker",
            index: 0,
            alpha: 255,
            reg: ["marker_transition"],
            offset: {
                x: 125,
                y: 270
            },
            size: {
                width: 60,
                height: 60
            }

            transition: {
                name: "testOne"
                x: 9720,
                y: 2450
            }
        }
    ]

    return config

end function