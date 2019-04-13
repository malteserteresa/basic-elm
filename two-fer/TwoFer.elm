module TwoFer exposing (..)
import Browser
import Html exposing (Html, Attribute, div, input, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)


-- MAIN


main =
  Browser.sandbox { init = init, update = update, view = view }

-- Model

type alias Model =
  { content : String
  }


init : Model
init =
  { content = "One for you, one for me." }


twoFer : Maybe String -> String
twoFer name =
    case name of
        Nothing ->
          "One for you, one for me."

        Just inputName ->
          "One for " ++ inputName ++ ", one for me."

-- UPDATE

type Msg
  = Name String


update : Msg -> Model -> Model
update msg model =
  case msg of
    Name newName ->
      { model | content = twoFer (Just newName) }


-- View

view : Model -> Html Msg
view model =
  div []
    [ input [ placeholder "Enter name", onInput Name ] []
    , div [] [ text model.content ]
    ]