variable "s3tables_table_bucket_replications" {
  description = <<EOT
Map of s3tables_table_bucket_replications, attributes below
Required:
    - role
    - table_bucket_arn
Optional:
    - region
    - rule (block):
        - destination (optional, block):
            - destination_table_bucket_arn (required)
EOT

  type = map(object({
    role             = string
    table_bucket_arn = string
    region           = optional(string)
    rule = optional(list(object({
      destination = optional(list(object({
        destination_table_bucket_arn = string
      })))
    })))
  }))
}

