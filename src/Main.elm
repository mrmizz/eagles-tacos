module Main exposing (main)

-- MAIN

import Browser
import Html exposing (Html)
import Model.Model as Model exposing (IsOpen(..), Model)
import Model.State exposing (State(..))
import Msg.Msg exposing (Msg(..))
import Sub.Sub as Sub
import View.Gallery.Gallery
import View.Hours.Hours
import View.Menu.Menu
import View.Order.Order


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.onResize
        }


init : () -> ( Model, Cmd Msg )
init _ =
    Model.init



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NewWindowSize windowSize ->
            ( { model | windowSize = windowSize }, Cmd.none )

        ClickedTab state ->
            ( { model | state = state, navbar = No }, Cmd.none )

        ClickedBurger ->
            let
                new =
                    case model.navbar of
                        Yes ->
                            No

                        No ->
                            Yes
            in
            ( { model | navbar = new }, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    case model.state of
        Menu ->
            View.Menu.Menu.view model

        Hours ->
            View.Hours.Hours.view model

        Gallery ->
            View.Gallery.Gallery.view model

        Order ->
            View.Order.Order.view model
