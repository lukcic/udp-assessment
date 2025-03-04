# udp-assessment

## ToDo

- create storage account for storing remote state
- default tags?

## Azure credentials

To access Azure by Terraform we should use:

- `Azure CLI` when running TF locally
- `Service Principal` or `Managed Identity` when running TF by CI server
  - permissions to register resource providers

### Azure CLI

```sh
az login --use-device-code
az account show
```

## Variables

To deploy project with only one valid subscription ID:

```sh
export TF_VAR_subscription_id="a5551..."
```
