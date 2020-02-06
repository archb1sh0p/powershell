#####################################################################
#    Tracking down accounts that are members of privileged groups
#
#    All-Powershell-Scripts-Have-This-Fancy-Comment-Thing-So-I'll-Do-It-Too
#
#####################################################################

$PrivilegeGroups = "Administrators","DNSadmins", "Account Operators", "Server Operators", "Schema Admins"
$PrivilegeUsers = foreach ($group in $PrivilegeGroups) 
{
    Get-ADGroupMember $group -Recursive | Select-Object name

}
$PrivilegeUsers
