resource "azurerm_mssql_server" "todo_sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.resource_group_location
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
}

resource "azurerm_mssql_database" "todo_sql_db" {
  name         = var.sql_db_name
  server_id    = azurerm_mssql_server.todo_sql_server.id
  collation    = "SQL_Latin1_General_CP1_CI_AS"      # Not changing - letting is by default as per terrafornm registry
  license_type = "LicenseIncluded"                   # Not changing - letting is by default as per terrafornm registry       
  max_size_gb  = 2                                   # Not changing - letting is by default as per terrafornm registry
  sku_name     = "S0"                                # Not changing - letting is by default as per terrafornm registry
  enclave_type = "VBS"                               # Not changing - letting is by default as per terrafornm registry
  auto_pause_delay_in_minutes = 30                   # Not changing - letting is by default as per terrafornm registry

}