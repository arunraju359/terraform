output "sample"{
    value = "Hello world"
}


variable "list"{
    default=["Chennai","Karnataka","Bangalore"]
}

output "sample-list"{
    value= "The capital of TN is ${var.list[0]}"
}