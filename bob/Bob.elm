module Bob exposing (hey)
import Char


hey : String -> String
hey remark =
        let trimmed = String.trim remark
        in
        if isQuestion trimmed  && isUpperCase trimmed then
        "Calm down, I know what I'm doing!"

        else if isQuestion trimmed then
        "Sure."

        else if trimmed == "" then
        "Fine. Be that way!"

        else if isUpperCase trimmed then
        "Whoa, chill out!"

        else "Whatever."


isQuestion: String -> Bool
isQuestion remark = if String.endsWith "?" remark then True else False

isUpperCase: String -> Bool
isUpperCase remark = String.all Char.isUpper (String.filter Char.isAlpha remark) && String.any Char.isAlpha remark
