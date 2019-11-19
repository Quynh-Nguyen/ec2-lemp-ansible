
### lemp-ansible
Installin LEMP Stack (Linux, NGINX, MySQL, &amp; PHP) using Ansible On linux Amazon EC2 AMI



### How to use ?
ansible-playbook -i hosts site.yml --user=USER --extra-vars "ansible_sudo_pass=PASSWORD"



- Requires Ansible 1.2 or newer
- Expects CentOS/RHEL 6.x hosts

These playbooks deploy a simple all-in-one configuration of the popular
WordPress blogging platform and CMS, frontend by the Nginx web server and the
PHP-FPM process manager. To use, copy the `hosts.example` file to `hosts` and
edit the `hosts` inventory file to include the names or URLs of the servers
you want to deploy.

Then run the playbook, like this:

	cd /tmp && curl -s https://raw.githubusercontent.com/Quynh-Nguyen/ec2-lemp-ansible/master/summon.sh | /bin/bash

The playbooks will configure MySQL, WordPress, Nginx, and PHP-FPM. When the run
is complete, you can hit access server to begin the WordPress configuration.

### Ideas for Improvement

Here are some ideas for ways that these playbooks could be extended:

- Parameterize the WordPress deployment to handle multi-site configurations.
- Separate the components (PHP-FPM, MySQL, Nginx) onto separate hosts and
handle the configuration appropriately.
- Handle WordPress upgrades automatically.

We would love to see contributions and improvements, so please fork this
repository on GitHub and send us your changes via pull requests.