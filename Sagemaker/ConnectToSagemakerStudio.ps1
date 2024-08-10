<#
ConnectToSagemakerStudio.ps1  
Use the AWS CLI to create a presigned domain url and open it in the default browser  
[Reference to SageMaker Developer's Guide](https://docs.aws.amazon.com/sagemaker/latest/dg/studio-updated-launch.html)  

This only works when CLI is configured to use an IAM user with authorization to execute the create-presigned-domain-url cmdlet
#>
#Set values of inputs
$region="us-east-2"
$user="default-20240809T141325"
$domain_id="d-xb6rg4xdpeq7"
#Retrieve the presigned URL for selected domain
$url=aws sagemaker create-presigned-domain-url `
>> --region $region `
>> --domain-id $domain_id `
>> --user-profile-name $user `
>> --session-expiration-duration-in-seconds 43200
#Parse the output to isolate the url text
$myjson= $url  | ConvertFrom-Json
#Access the url in the default browser
Start-Process $myjson.AuthorizedUrl
