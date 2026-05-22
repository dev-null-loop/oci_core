[oci_dns_resolver and DNS resolver endpoint dependency issue](https://github.com/oracle/terraform-provider-oci/issues/1635)

## Notes

### DNS resolver association workaround

OCI creates the VCN DNS resolver association asynchronously after the VCN itself is created. The linked provider issue explains why a direct dependency chain on the resolver can fail during the same apply.

This module works around that by:

- optionally waiting a short duration after VCN creation
- then reading `oci_core_vcn_dns_resolver_association`
- exposing `dns_resolver_id` as an output when the lookup is enabled

Relevant module inputs:

- `lookup_dns_resolver_id`
  Default: `true`
  Set to `false` if callers do not need `dns_resolver_id` and you want to avoid the extra lookup/workaround delay.

- `dns_resolver_lookup_wait_duration`
  Default: `"5s"`
  Controls how long the module waits before reading the resolver association data source.

When `lookup_dns_resolver_id = false`, the module still creates the VCN normally, but `dns_resolver_id` will be `null`.
