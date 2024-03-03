# Terraform S3 Bucket Management Script

## Key Features

- **Automated Bucket Creation**: Quickly create multiple S3 buckets with dynamic naming conventions.
- **Logging Configuration**: Enable server access logging to track bucket activity and monitor access requests.
- **Custom Access Policies**: Define custom policies for external access to ensure data security and compliance.
- **Modular Design**: Organized into modules for flexibility and scalability, making it easy to adapt to different use cases.

## Prerequisites

Before running the script, ensure you have:

- **Terraform Installed**: Make sure you have Terraform installed on your machine. You can download it from the [official website](https://www.terraform.io/downloads.html) and follow the installation instructions.
- **AWS Credentials**: Configure your AWS credentials with appropriate permissions. You can set up AWS CLI or use environment variables to provide access keys.

## Usage

1. **Clone Repository**: 
``` git clone https://github.com/example/terraform-s3-bucket.git ```

2. **Navigate to Directory**:
```cd terraform-s3-bucket```

3. **Edit Variables**: 
Open `variables.tf` file and update the following variables according to your requirements:
- `name`: A unique name to identify the bucket.
- `logging_target_bucket`: The target bucket for server access logging.
- *(Optional)* Other variables as needed for your specific use case.

4. **Initialize Terraform**: 
``` terraform init ```

5. **Review Execution Plan**: 
``` terraform plan ```

6. **Apply Changes**: 
``` terraform apply ```

7. **Verify Configuration**: 
Once the script execution is complete, verify the S3 bucket(s) have been created with the desired configurations in the AWS Management Console.

## Cleanup

To remove the created resources and clean up your AWS account:

1. Run `terraform destroy` to delete all the resources created by the script.

2. Confirm the destruction by entering `yes` when prompted.

## Contributors

- [Mohammad Athar](https://github.com/atharshah1)

