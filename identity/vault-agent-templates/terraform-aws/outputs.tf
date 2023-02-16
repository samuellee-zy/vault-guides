output "endpoints_1" {
  value = <<EOF

Vault Server IP (public):  ${join(", ", aws_instance.vault-server.*.public_ip)}
Vault Server IP (private): ${join(", ", aws_instance.vault-server.*.private_ip)}

For example:
   ssh -i ${var.key_name}.pem ubuntu@${aws_instance.vault-server[0].public_ip}

Vault Client IP (public):  ${aws_instance.vault-client[0].public_ip}
Vault Client IP (private): ${aws_instance.vault-client[0].private_ip}

For example:
   ssh -i ${var.key_name}.pem ubuntu@${aws_instance.vault-client[0].public_ip}
   
EOF

}

output "endpoints_2" {
  value = <<EOF

Vault Server IP (public):  ${join(", ", aws_instance.vault-server.*.public_ip)}
Vault Server IP (private): ${join(", ", aws_instance.vault-server.*.private_ip)}

For example:
   ssh -i ${var.key_name}.pem ubuntu@${aws_instance.vault-server[0].public_ip}

Vault Client IP (public):  ${aws_instance.vault-client[1].public_ip}
Vault Client IP (private): ${aws_instance.vault-client[1].private_ip}

For example:
   ssh -i ${var.key_name}.pem ubuntu@${aws_instance.vault-client[1].public_ip}
   
EOF

}
