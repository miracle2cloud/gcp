output "instance_ip" {
  value = google_compute_instance.my_tfinstance.network_interface.0.network_ip
}

output "id" {
   value = google_compute_instance.my_tfinstance.id
}