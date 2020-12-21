module Msg.Msg exposing (Msg(..))

import Model.State exposing (State)
import Model.WindowSize exposing (WindowSize)


type Msg
    = NewWindowSize (Maybe WindowSize)
    | ClickedTab State
