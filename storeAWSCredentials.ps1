#Create/update IAM groups with desired role(s)
#Create/update IAM user - assign to group(s) with desired roles
#Download credentials as csv file - does NOT include User Name
<#
type ef-admin_accessKeys.csv
Access key ID,Secret access key
xxx,xxx

Open file in VS Code- check encoding (lower right corner)
Update encoding to UTF8 (not BOM)
Add User Name column
type ef-admin_accessKeys.csv
User Name,Access key ID,Secret access key
ef-admin,xxx,yyy
Save updated file to active folder (or include path after // in command)
#>
aws configure import --csv file://ef-admin_accessKeys.csv
# Successfully imported 1 profile(s)