module App.Init (init) where

{-| Init

初始化请求博客文章列表

-}

import Effects exposing (Effects)
import App.Action exposing (Action(..))
import App.Model  exposing (Model, initModel)
import App.Port  exposing (Ports)

import About.Init as About

init : Ports -> (Model, Effects Action)
init ports =
  let
    m =
      { initModel | about = About.init ports.contacts ports.props ports.langs ports.me }
  in
    (m, Effects.none)
