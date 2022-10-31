

Function RandoPW {

    $upper = "ABCDEFGHKLMNOPRSTUVWXYZ".tochararray() 
    $lower = "abcdefghiklmnoprstuvwxyz".tochararray() 
    $number = "0123456789".tochararray() 
    $special = "$%&?@#*!".tochararray() 

    For ($int=0; $int -le 0; $int++) {

        $password =($upper | Get-Random -count 3) -join ''
        $password +=($lower | Get-Random -count 5) -join ''
        $password +=($number | Get-Random -count 3) -join ''
        $password +=($special | Get-Random -count 3) -join ''

        $passwordarray=$password.tochararray() 
        $RandoPW=($passwordarray | Get-Random -Count 14) -join ''
        $RandoPW
    }

}

RandoPW


