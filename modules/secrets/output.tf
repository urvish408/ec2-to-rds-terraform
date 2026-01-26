output "db_password" {
 value = aws_secretsmanager_secret_version.secrets_version.secret_string 
}