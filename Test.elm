module Test exposing (..)

import Window
import String exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.App exposing (..)
import Task exposing (..)
import Debug exposing (log)


type alias Model =
    { windowSize : Window.Size
    }


init : ( Model, Cmd Msg )
init =
    ( { windowSize =
            Window.Size 0 0
      }
    , Task.perform (\_ -> Idle) (\x -> Resize x) Window.size
    )


type Msg
    = Resize Window.Size
    | Idle


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Resize newSize ->
            ( { model
                | windowSize = newSize
              }
            , Cmd.none
            )

        Idle ->
            ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Window.resizes Resize


main =
    program { init = init, view = view, update = update, subscriptions = subscriptions }


view model =
    div []
        [ whichStyle model
        , text ("Width: " ++ toString model.windowSize.width)
        , text ("CurSz: " ++ toString (currentSize model))
        ]


currentSize model =
    model.windowSize.width


whichStyle model =
    if
        model.windowSize.width
            > 600
    then
        myStyleBig
    else
        myStyleSmall


myStyleBig =
    div
        [ style
            [ ( "color", "red" ) ]
        ]
        [ text "big!" ]


myStyleSmall =
    div
        [ style
            [ ( "color", "green" ) ]
        ]
        [ text "small!" ]
