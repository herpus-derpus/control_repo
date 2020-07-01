class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDTYxh5GyrQrmfAWUMT/FhJfuW84GsNsDLEGHbvilrHrvNIGB5P9Q6pd4mjC/YNHOeqni/5b6lXwtg81fHdY///AUdkfxbY/7gRAdDe+iYiDtkqQ/alVp0Dw8Rn4peUnen0rMBOnmvtKu8qdximeMok5qz1SmGfBRIPwy6/wrBdZxMyITIqA1YDVzAX5t0nXtEWhHHHeAoUt64pot7tlMJ0w8wDCAXH0i/OWEZNXcTXh20iD2uMx7J4FajoiKhvRPiX070i7x6GbMdF27sz4ch2gTwEGI/0UQp4A6KD1+ILp4F9eZ0oEkLAQ2rTMT2j3hO8WK/1hbAGBN0TeO5qFHjz',
	}
}
