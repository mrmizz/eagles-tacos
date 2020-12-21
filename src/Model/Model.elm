module Model.Model exposing (IsOpen(..), Model, init)

import Browser.Dom
import Model.State exposing (State(..))
import Model.WindowSize as WindowSize exposing (WindowSize)
import Msg.Msg exposing (Msg(..))
import Task


type alias Model =
    { state : State
    , windowSize : Maybe WindowSize
    , navbar : IsOpen
    }


type IsOpen
    = Yes
    | No


init : ( Model, Cmd Msg )
init =
    let
        handle : Result x Browser.Dom.Viewport -> Msg
        handle result =
            case result of
                Ok viewport ->
                    NewWindowSize
                        (Just
                            (WindowSize.apply
                                (Basics.round viewport.viewport.width)
                                (Basics.round viewport.viewport.height)
                            )
                        )

                Err _ ->
                    NewWindowSize Nothing
    in
    ( { state = Gallery
      , windowSize = Nothing
      , navbar = No
      }
    , Task.attempt handle Browser.Dom.getViewport
    )
