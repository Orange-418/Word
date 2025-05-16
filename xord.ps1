function DecryptChar($number) {
    return [char]($number -bxor [int][char]'a')
}

function GetFirstThreeChars($text) {
    return $text.Substring(0, 3)
}

function RemoveFirstThreeChars($text) {
    return $text.Substring(3)
}

function DecryptString($text) {
    $result = ""
    while ($text.Length -gt 0) {
        $result += DecryptChar([int](GetFirstThreeChars $text))
        $text = RemoveFirstThreeChars $text
    }
    return $result
}

$input = Read-Host "Enter the string to decrypt"
$decryptedText = DecryptString $input
Write-Output $decryptedText
