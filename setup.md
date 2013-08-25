To set up GridType for local development please do the following:

Edit your hosts file

sudo nano -w /private/etc/hosts

127.0.0.1 local.beta.projectgridtype.org

Edit your vhosts file. The below if for MAMP on the Mac but otherwise it would be in your etc folder

cd /Applications/MAMP/conf/apache/vhosts.conf

#
# Virtual Hosts
#
# VirtualHost example:
# Almost any Apache directive may go into a VirtualHost container.
# The first VirtualHost section is used for all requests that do not
# match a ServerName or ServerAlias in any <VirtualHost> block.
#
# <VirtualHost *:8888>
#     ServerAdmin webmaster@dummy-host.example.com
#     DocumentRoot "/www/docs/dummy-host.example.com"
#     ServerName dummy-host.example.com
#     ServerAlias www.dummy-host.example.com
#     ErrorLog "/private/var/log/apache2/dummy-host.example.com-error_log"
#     CustomLog "/private/var/log/apache2/dummy-host.example.com-access_log common"
# </VirtualHost>
#
# <VirtualHost *:8888>
#     ServerAdmin webmaster@dummy-host2.example.com
#     DocumentRoot "/www/docs/dummy-host2.example.com"
#     ServerName dummy-host2.example.com
#     ErrorLog "/private/var/log/apache2/dummy-host2.example.com-error_log"
#     CustomLog "/private/var/log/apache2/dummy-host2.example.com-access_log common"
# </VirtualHost>
#
 
<VirtualHost *:9998>
ServerName local.beta.projectgridtype.org
DocumentRoot /Users/~yourUser/Sites/gridtype/
<Directory /Users/~yourUser/Sites/gridtype/>
Options Indexes FollowSymLinks MultiViews
AllowOverride All
Order allow,deny
allow from all
</Directory>
</VirtualHost>

Enable virtual hosts in Apache
Go to the Terminal window and type:
nano -w /Applications/MAMP/conf/apache/httpd.conf

Hold control v until you reach the bottom of the httpd.conf file and place this text at the end:

NameVirtualHost *:9998
Include /Applications/MAMP/conf/apache/vhosts.conf

Finally, to apply all our changes type this into Terminal:
/Applications/MAMP/bin/apache2/bin/apachectl restart

For more info visit:

http://danilo.ariadoss.com/how-to-setup-virtual-hosts-mamp-environment/