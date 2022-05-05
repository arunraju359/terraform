variable "sample" {
    default = "hello from variable"
}

output "sample"{
    value = var.sample
}

variable "number"{
    default = "3487t3874"

}

output "number"{
    value = var.number
}

variable "sample-list"{
    default = [
        "DevOps",
        "Arun",
        "Uk"

    ]
}

output "sample-list" {
    value = "welcome to ${var.sample-list[0]} position ${var.sample-list[2]} ${var.sample-list[1]}"
  
}

variable City{}
output City{

    value = "My city is ${var.City}"

    
}


