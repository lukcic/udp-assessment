# udp-assessment

## ToDo

- create storage account for storing remote state
- default tags?

## Azure credentials

To access Azure by Terraform we should use:

- `Azure CLI` when running TF locally

    AZ login:

    ```sh
    az login --use-device-code
    az account show
    ```

- `Service Principal` or `Managed Identity` when running TF by CI server
  - permissions to register resource providers

  Service Principal creation:

  ```sh
    az ad sp create-for-rbac --name="terraform-service-principal" --role="Contributor" --scopes="/subscriptions/<SUBSCRIPTION_ID>"
  ```

### Azure CLI



## Variables

To deploy project with only one valid subscription ID:

```sh
export TF_VAR_subscription_id="a5551..."
```
