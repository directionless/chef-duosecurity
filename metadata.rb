name                "duosecurity"
maintainer          "Articulate"
maintainer_email    "ops@articulate.com"
license             "MIT"
description         "Installs/Configures duosecurity"
long_description    IO.read(File.join(File.dirname(__FILE__), "README.md"))
version             "1.3.2"

supports            "debian"
supports            "ubuntu"
recipe              "duosecurity::default", "Installs and configures login_duo"
recipe              "duosecurity::package", "Installs login_duo from package"
recipe              "duosecurity::source", "Installs login_duo from source"
depends             "ark"
depends             "pam"
depends             "sshd"
depends             "apt"
source_url          "https://github.com/articulate/chef-duosecurity" if respond_to?(:source_url)
