module Helper exposing (..)

import Html exposing (Html, div, h1, h2, h3, h4, h5, h6, a, text)
import Html.Attributes exposing (href)


-- --- FUNCIONES LÓGICAS ---

-- 1. Une dos cadenas usando el operador (++)
joinWords : String -> String -> String
joinWords word1 word2 =
    word1 ++ word2


-- 2. Transforma cada Char de la lista a Bool usando Char.isUpper
isUpperChars : List Char -> List Bool
isUpperChars list =
    List.map Char.isUpper list


-- 3. Función de orden superior que aplica una función de transformación a una lista
evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars list funTrans =
    List.map funTrans list


-- --- COMPONENTES DE VISTA ---

-- 4. Genera un div con encabezados del h1 al h6
headers : String -> Html msg
headers param =
    div []
        [ h1 [] [ text param ]
        , h2 [] [ text param ]
        , h3 [] [ text param ]
        , h4 [] [ text param ]
        , h5 [] [ text param ]
        , h6 [] [ text param ]
        ]


-- 5. Genera un hipervínculo <a> dado una URL y un texto
hyperlink : String -> String -> Html msg
hyperlink url textParam =
    a [ href url ] [ text textParam ]


-- --- PUNTO DE ENTRADA ---

main : Html msg
main =
    div []
        [ headers "Titulos"
        , hyperlink "https://upa.edu.mx" "My School"
        ]