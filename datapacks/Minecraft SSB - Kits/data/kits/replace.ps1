Get-ChildItem -Path $PSScriptRoot -Recurse -Filter *.mcfunction | ForEach-Object {
    (Get-Content $_.FullName) | ForEach-Object { 
        $_ -replace 'custom_model_data=\{floats\[(\d+)]\}', 'custom_model_data={floats:[$1]}' 
    } | Set-Content $_.FullName
}