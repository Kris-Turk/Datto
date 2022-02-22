$scriptURI = 'https://raw.githubusercontent.com/Kris-Turk/Datto/main/tmp/deploydatto.ps1'
$vms = Get-AzVM | Select-Object ResourceGroupName,Name,Location
$runCommandName = 'DattoDeploy'

ForEach ($vm in $vms) {
    Set-AzVMRunCommand -ResourceGroupName $vm.ResourceGroupName `
    -VMName $vm.Name `
    -RunCommandName $runCommandName `
    -Location $vm.Location `
    -SourceScriptURI $scriptURI
}

