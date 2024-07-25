# Complete Simple VPC

This is a complete simple VPC example of how this module functions.

## Usage:

To run this example you need to execute:

```
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example does not create any resources which can cost you money (to the best of the current knowledge of using AWS). That said, run `terraform destroy` when you no longer need these resources.

## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | ~> 1.7 |
| <a name="requirement_aws"></a> [aws](#requirement_aws) | ~> 5.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_aws"></a> [aws](#provider_aws) | ~> 5.0 |

## Modules

| Name | Source | Version |
| ---- | ------ | ------- |
| <a name="module_vpc"></a> [vpc](#module_vpc) | ../../ | n/a |

## Resources

| Name | Type |
| ---- | ---- |
| [aws_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_internet_gateway](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_route_table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_availability_zones](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |

## Inputs

No inputs.

## Ouputs

| Name | Description |
| ---- | ----------- |
| <a name="output-vpc_id"></a> [vpc_id](#output-vpc_id) | The ID of the VPC |
| <a name="output-public_subnets"></a> [public_subnets](#output-public_subnets) | A map of objects containing each public VPC subnet's ID and availability zone |
| <a name="output-private_subnets"></a> [private_subnets](#output-private_subnets) | A map of objects containing each VPC subnet's ID and availability zone of private subnets |

