Install-Module -Name WindowsImageTools
Import-Module WindowsImageTools
Get-Command -Module WindowsImageTools

#Get Windows Editions with DISM
dism /Get-WimInfo /wimFile:E:\sources\install.wim
#dism /Get-WimInfo /wimFile:C:\Lab\Kurs\Windows1022H2Education.wim



#Example create vhdx with Windows 10 22H2 Education

Convert-WIM2VHD -Path C:\LAB\Kurs\win10-22H2.vhdx -SourcePath E:\Sources\install.wim `
-index 1 -Size 40GB -DiskLayout UEFI -Dynamic


#Example create vhdx with Windows 10 22H2 Education

Convert-WIM2VHD -Path C:\LAB\Kurs\win10-22H2.vhdx -SourcePath C:\Lab\Kurs\Windows1022H2Education.wim `
-index 1 -Size 40GB -DiskLayout UEFI -Dynamic