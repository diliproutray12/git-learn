Step 1: Variable Data (Map Structure)vnet

Tuma data:

dilipvnet = {
  vnet1 = {
    name                = "frontendvnt"
    location            = "eastus"
    resource_group_name = "devrg"
    address_space       = ["10.0.0.0/16"]
  }
}

Eita gotie Map.

Visualize kara:

dilipvnet
   |
   └── vnet1
          |
          ├── name = frontendvnt
          ├── location = eastus
          ├── resource_group_name = devrg
          └── address_space = ["10.0.0.0/16"]

Ethare:

dilipvnet = main map
vnet1 = key
bhitare thiba sabu = values/object
Step 2: for_each Kana Karuchi?
for_each = var.dilipvnet

Terraform ku kahucha:

"dilipvnet map re jetiki entry achhi, setiki VNet create kara."

Ebe map re kebala:

vnet1

achhi.

Tai Terraform 1 thara loop chaliba.

Step 3: each.key Kana?

Loop chalila pare:

each.key

Value heba:

vnet1

Karana map ra key hela vnet1.

Step 4: each.value Kana?
each.value

Value heba pura object:

{
  name                = "frontendvnt"
  location            = "eastus"
  resource_group_name = "devrg"
  address_space       = ["10.0.0.0/16"]
}
Step 5: Terraform Ehi Line Ku Kemiti Read Karuchi?
Line
name = each.value.name

Terraform internally:

name = "frontendvnt"
Line
location = each.value.location

Terraform internally:

location = "eastus"
Line
resource_group_name = each.value.resource_group_name

Terraform internally:

resource_group_name = "devrg"
Line
address_space = each.value.address_space

Terraform internally:

address_space = ["10.0.0.0/16"]
Terraform Finally Eita Banauchhi

Terraform loop pare ehi resource generate karuchi:

resource "azurerm_virtual_network" "vnetdil" {

  name                = "frontendvnt"
  location            = "eastus"
  resource_group_name = "devrg"
  address_space       = ["10.0.0.0/16"]
}
for_each Kain Use Karanti?

Dhara 10 ta VNet create karibara achhi.

Without for_each:

resource "azurerm_virtual_network" "vnet1" {}
resource "azurerm_virtual_network" "vnet2" {}
resource "azurerm_virtual_network" "vnet3" {}

Bahut bada code heijiba.

for_each use kale:

dilipvnet = {
  vnet1 = {...}
  vnet2 = {...}
  vnet3 = {...}
}

Terraform automatically 3 ta VNet create karideba.

Interview Re Kemiti Kahiba?

Hinglish:

"Maine VNet creation ko dynamic banane ke liye for_each use kiya hai. for_each map ke har key-value pair par iterate karta hai. each.key map ka key return karta hai aur each.value us key ka object return karta hai. Isse same code se multiple VNets create kar sakte hain without repeating resources."

Ehi concept ta clear hele pare subnet re nested map + for_each bahut easy lagiba. 🚀