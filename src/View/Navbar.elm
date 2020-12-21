module View.Navbar exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (alt, class, src, width)
import Html.Events exposing (onClick)
import Model.State exposing (State(..))
import Msg.Msg exposing (Msg(..))


view : Html Msg
view =
    Html.nav
        [ class "navbar is-fixed-top navbar-margin has-border-shadow"
        ]
        [ Html.div
            [ class "navbar-brand has-bg-color1"
            ]
            [ Html.a
                [ class "navbar-item"
                , onClick (ClickedTab Gallery)
                ]
                [ Html.img
                    [ src "images/logo2.jpg"
                    , alt "Eagles Tacos"
                    , width 250
                    ]
                    []
                ]
            , Html.a
                [ class "navbar-burger"
                ]
                [ Html.span [] []
                , Html.span [] []
                , Html.span [] []
                ]
            ]
        , Html.div
            [ class "navbar-menu is-size-3 has-bg-color1"
            ]
            [ Html.div
                [ class "navbar-start"
                ]
                [ Html.a
                    [ class "navbar-item is-tab has-text-danger has-text-weight-bold"
                    , onClick (ClickedTab Menu)
                    ]
                    [ Html.text "MENU"
                    ]
                , Html.a
                    [ class "navbar-item is-tab has-text-danger has-text-weight-bold"
                    , onClick (ClickedTab Hours)
                    ]
                    [ Html.text "HOURS"
                    ]
                , Html.a
                    [ class "navbar-item is-tab has-text-danger has-text-weight-bold"
                    , onClick (ClickedTab Gallery)
                    ]
                    [ Html.text "GALLERY"
                    ]
                ]
            , Html.div
                [ class "navbar-end"
                ]
                [ Html.div
                    [ class "navbar-item"
                    ]
                    [ Html.div
                        [ class "buttons are-medium"
                        ]
                        [ Html.a
                            [ class "button is-danger"

                            -- , onClick (NavbarClick (ClickedTab Cart))
                            ]
                            [ Html.text "Order"
                            ]
                        ]
                    ]
                ]
            ]
        ]
