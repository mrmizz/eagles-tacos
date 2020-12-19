module View.Navbar exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (alt, class, src, width)
import Msg.Msg exposing (Msg)

view : Html Msg
view =
    Html.nav
        [ class "navbar is-fixed-top navbar-margin"
        ]
        [ Html.div
            [ class "navbar-brand has-bg-color1"
            ]
            [ Html.a
                [ class "navbar-item"
                --, onClick (NavbarClick (ClickedTab LandingPage))
                ]
                [ Html.img
                    [ src "images/logo2.jpg"
                    , alt "Eagles Tacos"
                    , width 200
                    ]
                    []
                ]
            , Html.a
                [ class "navbar-burger"
                -- , onClick (NavbarClick ClickedHamburgerMenu)
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
                    -- , onClick (NavbarClick (ClickedTab Artists))
                    ]
                    [ Html.text "MENU"
                    ]
                , Html.a
                    [ class "navbar-item is-tab has-text-danger has-text-weight-bold"
                    -- , onClick (NavbarClick (ClickedTab OurStory))
                    ]
                    [ Html.text "HOURS"
                    ]
                , Html.a
                    [ class "navbar-item is-tab has-text-danger has-text-weight-bold"
                    -- , onClick (NavbarClick (ClickedTab Shop))
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