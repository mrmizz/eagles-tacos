module View.Gallery.Gallery exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class, src, width)
import Msg.Msg exposing (Msg)
import View.Navbar


view : Html Msg
view =
    Html.div
        []
        [ View.Navbar.view
        , body
        ]


body : Html Msg
body =
    Html.section
        [ class "hero is-fullheight"
        ]
        [ Html.div
            [ class "hero-body has-bg-color2"
            ]
            [ Html.div
                [ class "columns is-multiline"
                ]
                [ Html.div
                    [ class "column is-12 has-border-all"
                    ]
                    [ Html.img
                        [ class "image"
                        , src "images/image1.jpg"
                        , width 2500
                        ]
                        []
                    ]
                , Html.div
                    [ class "column is-12 has-border-all is-hidden-desktop"
                    ]
                    [ Html.img
                        [ class "image"
                        , src "images/image3.jpg"
                        , width 2500
                        ]
                        []
                    ]
                , Html.div
                    [ class "column is-12 has-border-all is-hidden-desktop"
                    ]
                    [ Html.img
                        [ class "image"
                        , src "images/IMG_4567.jpeg"
                        , width 2500
                        ]
                        []
                    ]
                ]
            ]
        ]
