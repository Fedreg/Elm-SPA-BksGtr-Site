module Styles exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


--STYLES


mainStyle =
    style
        [ ( "textAlign", "center" )
        , ( "height", "100vh" )
        , ( "boxSizing", "border-box" )
        , ( "fontFamily", "Roboto, sans-serif" )
        , ( "transition", "1s ease-out" )
        , ( "overflow", "auto" )
        , ( "paddingBottom", "5%" )
        ]


navMainStyle =
    style
        [ ( "position", "fixed" )
        , ( "width", "100%" )
        , ( "top", "0" )
        , ( "display", "flex" )
        , ( "height", "30px" )
        , ( "font-size", "1.1rem" )
        , ( "backgroundColor", "rgba(0,0,0,.4)" )
        , ( "padding", "0.75rem" )
        , ( "color", "white" )
        , ( "textTransform", "uppercase" )
        , ( "justifyContent", "space-around" )
        , ( "alignItems", "center" )
        ]


homePageStyle =
    style
        [ ( "backgroundImage", "url(\"media/storeNew2.jpg\")" )
        , ( "backgroundSize", "cover" )
        , ( "backgroundPosition", "center center" )
        , ( "display", "flex" )
        , ( "flexDirection", "column" )
        , ( "width", "100%" )
        , ( "height", "100vh" )
        , ( "color", "white" )
        ]


ryanPageStyle =
    style
        [ ( "backgroundImage", "url(\"media/ryan.jpg\")" )
        , ( "backgroundSize", "cover" )
        , ( "backgroundPosition", "center center" )
        , ( "display", "flex" )
        , ( "flexDirection", "column" )
        , ( "width", "100%" )
        , ( "height", "70vh" )
        , ( "color", "white" )
        ]


fedPageStyle =
    style
        [ ( "backgroundImage", "url(\"media/fed.jpg\")" )
        , ( "backgroundSize", "cover" )
        , ( "backgroundPosition", "center center" )
          --        , ( "display", "flex" )
        , ( "flexDirection", "column" )
        , ( "width", "100%" )
        , ( "height", "70vh" )
        , ( "color", "black" )
        ]


lessonPageStyle =
    style
        [ ( "backgroundImage", "url(\"media/student.jpg\")" )
        , ( "backgroundSize", "cover" )
        , ( "backgroundPosition", "center bottom" )
        , ( "width", "100%" )
        , ( "height", "70vh" )
        , ( "color", "white" )
        ]


flexParentStyle =
    style
        [ ( "display", "flex" )
        , ( "flexDirection", "row" )
        , ( "flexWrap", "wrap" )
        , ( "justifyContent", "space-around" )
        ]


flexChildStyle =
    style
        [ ( "boxSizing", "border-box" )
        , ( "width", "40%" )
        ]


titleStyle =
    style
        [ ( "fontSize", "4rem" )
        , ( "paddingTop", "15rem" )
        , ( "textTransform", "uppercase" )
        ]


titleStyle2 =
    style
        [ ( "fontSize", "3rem" )
        , ( "paddingTop", "3rem" )
        , ( "textTransform", "uppercase" )
        ]


subtitleStyle =
    style
        [ ( "fontSize", "1.5rem" )
        , ( "paddingTop", "1rem" )
        , ( "color", "#000" )
        ]


subtitleStyle2 =
    style
        [ ( "fontSize", "2rem" )
        , ( "paddingTop", "1rem" )
        , ( "textTransform", "uppercase" )
        , ( "color", "#222" )
        ]


textStyle =
    style
        [ ( "fontSize", "1.0rem" )
        , ( "paddingTop", "1rem" )
        , ( "width", "90%" )
        , ( "margin", "0 auto" )
        , ( "height", "auto" )
        ]
