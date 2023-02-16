output "endpoints" {
  value = <<EOF

Vault Server IP (public):  ${join(", ", aws_instance.vault-server.*.public_ip)}
Vault Server IP (private): ${join(", ", aws_instance.vault-server.*.private_ip)}

For example:
   ssh -i ${var.key_name}.pem ubuntu@${aws_instance.vault-server[0].public_ip}

Vault Client IP (public):  ${aws_instance.vault-client[count.index].public_ip}
Vault Client IP (private): ${aws_instance.vault-client[count.index].private_ip}

For example:
   ssh -i ${var.key_name}.pem ubuntu@${aws_instance.vault-client[count.index].public_ip}
   
EOF

}
