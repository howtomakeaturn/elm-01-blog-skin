module Create exposing (..)

-- Press buttons to increment and decrement a counter.
--
-- Read how it works:
--   https://guide.elm-lang.org/architecture/buttons.html
--

import Browser
import Html exposing (Html, button, div, text, h1, hr, h2, p, h3, a, form, input, textarea)
import Html.Attributes exposing (style, href, method, action, type_, placeholder, value, rows)
import Html.Events exposing (onClick)

-- MAIN

main =
  Browser.sandbox { init = init, update = update, view = view }

-- MODEL

type alias Model = Int

init : Model
init =
  0

-- UPDATE

type Msg
  = NothingHappen

update : Msg -> Model -> Model
update msg model =
  model

-- VIEW

view : Model -> Html Msg
view model =
  div [ style "padding" "1rem" ]
    [ a [ href "/src/Main.elm" ] [ text "<< Back to blog list." ]
    , hr [ style "margin" "1.25rem 0" ] []
    , div [ style "max-width" "600px" ] [
        form [ method "post", action "/src/Submit.elm" ] [
          div [] [
            input [ type_ "text", placeholder "Post title...", style "width" "100%" ] []
          ]
        , div [ style "margin-top" "0.5rem" ] [
            textarea [ placeholder "Post content...", rows 10, style "width" "100%" ] []
        ]
        , div [ style "margin-top" "0.5rem" ] [
            input [ type_ "submit", value "Submit New Post", style "float" "right" ] []
          ]
        ]
      ]
    ]
