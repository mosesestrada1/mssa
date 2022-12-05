#view users from csv file
Import-Csv ".\users.csv" | Out-GridView

Import-Csv ".\users.csv" | New-ADUser -AccountPassword $(convertto-securestring "Pa55w.rd" -AsPlainText -Force) -ChangePasswordAtLogon $true -Enabled $true

Import-Csv ".\users.csv" |
    New-ADUser `
    -enabled $true `
    -accountpassword $(convertTo-SecureString "Pa55w.rd" -AsPlainText -Force)