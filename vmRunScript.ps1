$scriptURI = 'https://raw.githubusercontent.com/Kris-Turk/Datto/main/deploydatto.ps1'
$runCommandName = 'DeployDatto'

$vms = Get-AzVM | Select-Object ResourceGroupName,Name,Location

ForEach ($vm in $vms) {
    Set-AzVMRunCommand -ResourceGroupName $vm.ResourceGroupName -VMName $vm.Name -RunCommandName $runCommandName -Location $vm.Location -SourceScriptURI $scriptURI
}

