function EncryptChar($char) {
    return [int][char]($char -bxor [int][char]'v')
}

function EncryptString($text) {
    $result = ""
    foreach ($char in $text.ToCharArray()) {
        $encryptedChar = EncryptChar $char
        $result += "{0:D3}" -f $encryptedChar
    }
    return $result
}

$input = Read-Host "Enter the string to encrypt"
$encryptedText = EncryptString $input
$encryptedText += "086"
Write-Output $encryptedText
Write-Output "check 086"
