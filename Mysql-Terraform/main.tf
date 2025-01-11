module "netwoking" {
    source = "./network"
    vpc_cidr                 = var.vpc_cidr
    vpc_name                 = var.vpc_name
    vpc_tenancy              = var.vpc_tenancy
    pub_sub_names            = var.pub_sub_names
    pub_cidr                 = var.pub_cidr
    pvt_sub_names            = var.pvt_sub_names
    pvt_cidr                 = var.pvt_cidr
    igw_name                 = var.igw_name
    nat_name                 = var.nat_name
    pub_rt_names             = var.pub_rt_names
    pvt_rt_names             = var.pvt_rt_names  
    peering_vpc_id           = var.peering_vpc_id
    route_table_id           = var.route_table_id
    enable_dns_hostnames     = var.enable_dns_hostnames
    enable_dns_support       = var.enable_dns_support
    aws_region               = var.aws_region
    default_route_cidr_block = var.default_route_cidr_block
    local_gateway_id         = var.local_gateway_id
    vpc_peering_cidr_block   = var.vpc_peering_cidr_block
    auto_accept_peering      = var.auto_accept_peering
    vpc_peering_name         = var.vpc_peering_name
}

module "Security" {
    source = "./security"
    bastion_instance_name       = var.bastion_instance_name
    pvt_instance_name           = var.pvt_instance_name
    pvt_instance_name_02        = var.pvt_instance_name_02
    instance_type               = var.instance_type
    sec_grp                     = var.sec_grp
    key_name                    = var.key_name
    pub_sub_id                  = module.netwoking.pub_subnet_id[0]
    pvt_sub_id                  = module.netwoking.pvt_subnet_id
    vpc_id                      = module.netwoking.vpc_id
    inbound_ports               = var.inbound_ports
    outbound_ports              = var.outbound_ports
    associate_public_ip_address = var.associate_public_ip_address
    volume_size                 = var.volume_size
    ingress_cidr_blocks         = var.ingress_cidr_blocks
    egress_cidr_blocks          = var.egress_cidr_blocks
}

