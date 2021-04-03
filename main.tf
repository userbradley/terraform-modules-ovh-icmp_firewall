resource "openstack_networking_secgroup_rule_v2" "inbound" {
  direction = "ingress"
  ethertype = "IPv4"
  protocol = "icmp"
  remote_ip_prefix = var.remote_ip
  security_group_id = var.sg_id
}