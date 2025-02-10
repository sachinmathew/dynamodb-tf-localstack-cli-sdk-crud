# DynamoDB with Terraform, LocalStack, CLI, and SDK CRUD Operations

This repository demonstrates how to set up and perform CRUD operations on DynamoDB using Terraform, LocalStack, AWS CLI, and AWS SDK.

## Prerequisites

- Terraform
- LocalStack
- AWS CLI
- AWS SDK for your preferred language (e.g., boto3 for Python)

## Setup

1. **Clone the repository:**

    ```sh
    git clone https://github.com/sachinmathew/dynamodb-tf-localstack-cli-sdk-crud.git
    cd dynamodb-tf-localstack-cli-sdk-crud
    ```

2. **Start LocalStack:**

    ```sh
    localstack start
    ```

3. **Initialize and apply Terraform configuration:**

    ```sh
    terraform init
    terraform apply
    ```

## Usage

### AWS CLI

1. **Create a table:**

    ```sh
    aws dynamodb create-table --table-name YourTableName --attribute-definitions AttributeName=Id,AttributeType=S --key-schema AttributeName=Id,KeyType=HASH --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5 --endpoint-url=http://localhost:4566
    ```

2. **List tables:**

    ```sh
    aws dynamodb list-tables --endpoint-url=http://localhost:4566
    ```

3. **Put an item:**

    ```sh
    aws dynamodb put-item --table-name YourTableName --item '{"Id": {"S": "123"}, "Name": {"S": "John Doe"}}' --endpoint-url=http://localhost:4566
    ```

4. **Get an item:**

    ```sh
    aws dynamodb get-item --table-name YourTableName --key '{"Id": {"S": "123"}}' --endpoint-url=http://localhost:4566
    ```

5. **Delete a table:**

    ```sh
    aws dynamodb delete-table --table-name YourTableName --endpoint-url=http://localhost:4566
    ```

### AWS SDK

Refer to the `sdk-examples` directory for examples in different programming languages.

## Cleanup

To destroy the resources created by Terraform:

```sh
terraform destroy
```

## License

This project is licensed under the MIT License.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request.

## Contact

For any questions or feedback, please contact [smathew.35@gmail.com](mailto:smathew.35@gmail.com).
