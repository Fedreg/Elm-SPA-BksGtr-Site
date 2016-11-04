module Main exposing (..)

import Styles exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.App exposing (..)
import Html.Events exposing (..)
import String exposing (..)


main =
    beginnerProgram { model = model, view = view, update = update }



--MODEL


type alias Model a =
    { pageView : a }


model =
    Model homePage


aboutBG =
    "Brookside Guitars is a neighborhood guitar studio located in the beautiful Brookside neighborhood of Kansas City, MO dedicated to passing on knowledge and love of music to others and to being a gathering point where local musicians can come together. BG's mission is to educate, inspire, and instill a lifelong enjoyment of creating music in students of all ages."


contactInfo =
    "6217 Oak Street, Kansas City, MO 64113      |      816-200-2062      |      info@brooksideguitars.com"


aboutFed =
    "Brookside Guitars' owner and head instructor Fed Reggiardo's passion is playing and teaching music. A resident of the beautiful Brookside neighborhood, Fed sought to create a place where the community could come together to study, create, and perform music. Fed began playing the guitar at the age of seven and performaing at the age of 12. He holds Bachelor's and Master's degrees in Guitar Performance, has been teaching guitar for over 20 years and is a state certified music teacher for K-12. He has developed a teaching methodology designed to nurture and encourage his students to collaborate, perform, and create. He has studied with many of the best guitarists in the world and has created a specialized teaching curriculum designed to deveop the full potential of guitarists from 5 to 85 years of age. Although fluent in all music styles, Fed's specialties are classical, flamenco, and acoustic fingerstyle guitar."


aboutRyan =
    "In 2003 Ryan Wurtz earned a degree in Jazz Guitar Performance from the Conservatory at UMKC, studying under Bobby Watson, Rod Fleeman and Douglas Niedt.Specializing in Jazz and improvisation, Ryan is also at home teaching everything from rock to classical, as well as theory, ear training and writing your own music! In addition to teaching, Ryan performs weekly here in town, as well as across the country, with Kansas City's own Grand Maruis"


aboutLessonsP =
    "Private Lessons: 30 Minute Lesson. One Student, One Teacher. Each Lesson Is Tailored To Individual Student. Attend Weekly, Biweekly, Or At Your Conivenience. 30 minutes"


aboutLessonsS =
    "Shared Lessons: A 30 Minute Lesson. Two Students, One Teacher. Each Lesson Is Tailored To Meet The Needs Of Both Students Attend Weekly Or Biweekly. $15 each student."


strategy =
    "Our Expert Staff Has Over 75 Years Combined Experience Teaching Music. Let Us Leverage Our Knowledge Of The Latest Techniques And Methodologies To Make The Discovery And Practice Of Your Instrument As Efficient And Enjoyable As Possible."


focus =
    "Many Of Us Have A Specific Goal In Mind When We Start PlayingA Music. Whether Your Goal Is To Play A Specific Song,, Join A Band, Or Simply Get Mental Exercise, It Is Very Easy To Get Sidetracked And Not Work Efficiently Towards That Goal. Think Of Your Music Teacher As Your Coach. We Will Keep You Focused, In Shape, And Working Hard (unless You Hate Hard Work; See Below)"


community =
    "Playing A Musical Instrument Can Be A Lonely Pursuit With Hours Of Solitary Practice Each Week. Coming To A Lesson Gives You A Chance To Interact Musically With Another Human Being. We Also Offer Jam Sessions Every Month Where You Can Meet And Play With Other Students."


fun =
    "We Specialize Our Lesson Style To Each Student So That We Can Make Learning To Play Truly Enjoyable! Don't Want To Play Basic Songs Like Twinkle Twinkle And Mary Had A Little Lamb?! ...no Problem! Love Playing Scales For 4 Hours A Day?! ...we Know A Million Scales! We'll Have You Playing What You Want While Still Making Sure You're Working Towards Your Goals."



--UPDATE


type Msg string
    = ChangeView string


update msg model =
    case msg of
        ChangeView newPage ->
            { model | pageView = newPage }



--VIEW


view model =
    div [ mainStyle ]
        [ model.pageView
        , div [ navMainStyle ]
            [ div
                [ onClick (ChangeView homePage) ]
                [ text "home" ]
            , div
                [ onClick (ChangeView fedPage) ]
                [ text "about Fed" ]
            , div
                [ onClick (ChangeView ryanPage) ]
                [ text "about Ryan" ]
            , div
                [ onClick (ChangeView lessonPage) ]
                [ text "lessons" ]
            ]
        ]


homePage =
    div []
        [ div [ homePageStyle ]
            [ div [ titleStyle ] [ text "Brookside Guitars" ]
            , div [ subtitleStyle2 ] [ text "Kansas City, MO" ]
            ]
        , div [ titleStyle2 ] [ text "Your neighborhood Guitar Shop" ]
        , div [ textStyle ] [ text aboutBG ]
        , div [ subtitleStyle ] [ text contactInfo ]
        ]


fedPage =
    div []
        [ div [ fedPageStyle ] []
        , div [ titleStyle2 ] [ text "Fed Reggiardo" ]
        , div [ textStyle ] [ text aboutFed ]
        , div [] [ text "MUSIC PLAYER GOES HERE!" ]
        ]


ryanPage =
    div []
        [ div [ ryanPageStyle ] []
        , div [ titleStyle2 ] [ text "Ryan Wurtz" ]
        , div [ textStyle ] [ text aboutRyan ]
        , div [] [ text "MUSIC PLAYER GOES HERE!" ]
        ]


lessonPage =
    div []
        [ div [ lessonPageStyle ] []
        , div [ titleStyle2 ] [ text "Lessons" ]
        , div [ subtitleStyle ] [ text "Private Lessons $30 / Shared Lessons $15" ]
        , div [ textStyle ] [ text aboutLessonsP ]
        , div [ textStyle ] [ text aboutLessonsS ]
        , div [ subtitleStyle ] [ text "Why Study at Brookside Guitars?" ]
        , div [ flexParentStyle ]
            [ div [ flexChildStyle ]
                [ div [ subtitleStyle ] [ text "Strategy" ]
                , div [ textStyle ] [ text strategy ]
                ]
            , div [ flexChildStyle ]
                [ div [ subtitleStyle ] [ text "Focus" ]
                , div [ textStyle ] [ text focus ]
                ]
            , div [ flexChildStyle ]
                [ div [ subtitleStyle ] [ text "Community" ]
                , div [ textStyle ] [ text community ]
                ]
            , div [ flexChildStyle ]
                [ div [ subtitleStyle ] [ text "Fun!!" ]
                , div [ textStyle ] [ text fun ]
                ]
            ]
        ]
