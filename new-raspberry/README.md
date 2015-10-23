# New Raspberry Pi #

I'm new to using [Ansible][0] so please forgive any basic errors, but if you do need any help just get interaction and I'll be happy to help!

This [Ansible playbook][7] does the following things:

1. Installs a bunch of common tools that I use on every new [Raspberry Pi][1].
2. Changes the hostname of the new Raspberry Pi from its default of `raspberrypi` to something of our choosing.
3. Makes [zsh][2] the default shell and installs [oh-my-zsh][3],  which makes [zsh][2] much more awesomer.  And junk.
4. Installs [an awesome bash version of rmate][4], which enables you to use your local copy of [TextMate][5] whilst editing a file on a remote server.

## Running the Playbooks ##

### Modifying Example Inventory File ###

The inventory file in [ansible][0] holds a list of all of your remote machines, modify the example hosts file I've provided with your Raspberry Pi's IP address.

    [raspberries]
    raspberry ansible_ssh_port=22 ansible_ssh_host=192.168.0.33

The word raspberry at the beginning of the second line is an alias for the remote machine, this can be anything you like and can be used with any ansible command later on to refer to this machine.


### Copying your SSH Keys to the Raspberry Pi ###

Before you can run any of your playbooks you should copy over your ssh keys to your Raspberry Pi, this means you don't have to enter your password each time you run a playbook:

		ansible-playbook -c paramiko -i hosts setup.yml --ask-pass --sudo

### Choosing your Hostname ###

Once you've decided what your new Raspberry Pi is going to be called, navigate to the file `roles/common/vars/main.yml`, and change the line: `hostname: raspberrypi` to reflect your choice.

Also make sure that in the file `site.yml`, the line  `- hosts: raspberrypi` reflects your chosen hostname.

### Choosing your Oh-My-ZSH Theme ###

If you would like to use a different theme than the default one [oh-my-zsh][3] called __philips__, navigate to the file `roles/oh/my-zsh/vars/main.yml` and replace the name __philips__ in the line `zsh_theme: philips` to reflect the name of the theme you would like to use.

If you would like to get an idea of some of the themes available, you can look at the many themes available me [oh-my-zsh wiki][6].

Once you've made these changes, you can run the playbooks by using the following command:

        ansible-playbook -i hosts site.yml

After I've made the necessary couple of changes in the configuration files , I just run that one command to take a fresh installation of [Raspbian](http://www.raspbian.org/) to a nice comfortable working state for me!

### Picking and Choosing ###

If you only want to run one of the roles in this playbook, just open the `site.yml` file and comment in and/or out any of the lines in this section:

      roles:
         - common
         - oh-my-zsh
         - rmate


If you need any help, just get in touch and I will help if I can.  :-)

[0]: http://ansible.com/
[1]: http://www.raspberrypi.org/
[2]: http://www.zsh.org/
[3]: https://github.com/robbyrussell/oh-my-zsh
[4]: https://github.com/aurora/rmate
[5]: http://macromates.com/
[6]: https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
[7]: http://docs.ansible.com/playbooks.html
