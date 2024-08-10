#AWS CLI
# https://docs.aws.amazon.com/sagemaker/latest/dg/domain-view-edit.html
$region="us-east-2"
#List the domains for the authenticated user in the selected region
aws sagemaker list-domains --region $region
<#
{
    "Domains": [
        {
            "DomainArn": "arn:aws:sagemaker:us-east-2:802815951128:domain/d-xb6rg4xdpeq7",
            "DomainId": "d-xb6rg4xdpeq7",
            "DomainName": "QuickSetupDomain-20240809T141325",
            "Status": "InService",
            "CreationTime": "2024-08-09T14:13:24.499000-04:00",
            "LastModifiedTime": "2024-08-09T14:19:03.698000-04:00",
            "Url": "https://d-xb6rg4xdpeq7.studio.us-east-2.sagemaker.aws"
        }
    ]
}
#>  
#List apps in a domain
$domain_id="d-xb6rg4xdpeq7"
aws --region $region sagemaker list-apps --domain-id-equals $domain_id

#List user profiles in a domain
aws --region $region sagemaker list-user-profiles --domain-id-equals $domain_id

#List shared spaces in the domain
aws --region $region sagemaker list-spaces     --domain-id $domain_id

# Delete a domain (need to delete apps, users, spaces first)
# https://docs.aws.amazon.com/sagemaker/latest/dg/gs-studio-delete-domain.html
