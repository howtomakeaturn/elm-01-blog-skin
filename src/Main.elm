module Main exposing (..)

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
  = Increment
  | Decrement

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

-- VIEW

view : Model -> Html Msg
view model =
  div [ style "padding" "1rem" ]
    [ -- button [ onClick Decrement ] [ text "-" ]
    -- , div [] [ text (String.fromInt model) ]
    -- , button [ onClick Increment ] [ text "+" ]
    -- , hr [] []
      h1 [] [ text "Welcome To My Great Blog!" ]
    , h2 [] [ text "This is the personal blogging platform for Tony." ]
    , p [] [ text "Tony is a web developer based in Taiwan." ]
    , p [] [ text "Check the articles below to get more information." ]
    , hr [] []
    , postCard "Get better in the #3 post." "Author: Tony, Published: 2 days ago" "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged." "#post-3"
    , postCard "The #2 post is also good." "Author: Tony, Published: 4 days ago" "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged." "#post-2"
    , postCard "My #1 blog post." "Author: Tony, Published: 6 days ago" "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged." "#post-1"
    ]
postCard : String -> String -> String -> String -> Html Msg
postCard title info content url =
  div []
    [ a [ href url ] [
      h3 [ style "margin-bottom" "0.5rem" ] [ text title ]
    ]
    , div [] [ text info ]
    , div [ style "margin-top" "0.75rem" ] [ text content ]
    ]
