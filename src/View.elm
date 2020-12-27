module View exposing (..)

-- Press buttons to increment and decrement a counter.
--
-- Read how it works:
--   https://guide.elm-lang.org/architecture/buttons.html
--

import Browser
import Html exposing (Html, button, div, text, h1, hr, h2, p, h3, a)
import Html.Attributes exposing (style, href)
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
        postCard "My #1 blog post." "Author: Tony, Published: 6 days ago" "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged." "#post-1"
      ]
    ]

postCard : String -> String -> String -> String -> Html Msg
postCard title info content url =
  div []
    [ h1 [ style "margin-bottom" "0.5rem" ] [ text title ]
    , h2 [] [ text info ]
    , div [ style "margin-top" "0.75rem", style "font-size" "1.25rem" ] [ text content ]
    ]
