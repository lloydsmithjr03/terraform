provider "azurerm" {

}

resource "azurerm_resource_group" "terraform" {
    name = "terraform"
    location = "East US"
}

resource "azurerm_app_service_plan" "terraform_apps" {
    name = "terraform_apps"
    location = "${azurerm_resource_group.terraform.location}"
    resource_group_name = "${azurerm_resource_group.terraform.name}"

    sku {
        tier = "Standard"
        size = "S1"
    }
}

resource "azurerm_app_service" "lsmith-terraform-1" {
    name = "lsmith-terraform-1"
    location  = "${azurerm_resource_group.terraform.location}"
    resource_group_name = "${azurerm_resource_group.terraform.name}"
    app_service_plan_id = "${azurerm_app_service_plan.terraform_apps.id}"

    site_config {
        dotnet_framework_version = "v4.0"
        local_mysql_enabled = false
        websockets_enabled = false
        use_32_bit_worker_process = false
    }
}

resource "azurerm_app_service" "lsmith-terraform-2" {
    name = "lsmith-terraform-2"
    location  = "${azurerm_resource_group.terraform.location}"
    resource_group_name = "${azurerm_resource_group.terraform.name}"
    app_service_plan_id = "${azurerm_app_service_plan.terraform_apps.id}"

    site_config {
        dotnet_framework_version = "v4.0"
        local_mysql_enabled = false
        websockets_enabled = false
        use_32_bit_worker_process = false
    }
}

resource "azurerm_app_service" "lsmith-terraform-3" {
    name = "lsmith-terraform-3"
    location  = "${azurerm_resource_group.terraform.location}"
    resource_group_name = "${azurerm_resource_group.terraform.name}"
    app_service_plan_id = "${azurerm_app_service_plan.terraform_apps.id}"

    site_config {
        dotnet_framework_version = "v4.0"
        local_mysql_enabled = false
        websockets_enabled = false
        use_32_bit_worker_process = false
    }
}