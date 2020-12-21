module View.Order.Order exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Model.Model exposing (Model)
import Msg.Msg exposing (Msg)
import View.Navbar


view : Model -> Html Msg
view model =
    Html.div
        []
        [ View.Navbar.view model.navbar
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
                [ class "container is-fluid has-bg-color1 has-border-all"
                ]
                [ Html.h1
                    [ class "title is-1 has-text-danger has-text-centered"
                    ]
                    [ Html.text bigBoy
                    ]
                ]
            ]
        ]


bigBoy : String
bigBoy =
    """
    Call Ahead for Fast Pick-up:
    323-404-4000
    """
