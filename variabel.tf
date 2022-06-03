#network All Cidr Block
variable "vpccidr" {}

variable "pubsub1cidr" {}

variable "pubsub2cidr" {}

variable "pubsub3cidr" {}

variable "prisub1cidr" {}

variable "prisub2cidr" {}

variable "prisub3cidr" {}
#ec2 All ami Value
variable "ami-prod" {}
variable "ami-dev" {}
#ec2 all production and dev key
variable "key_name-prod" {}
variable "key_name-dev" {}