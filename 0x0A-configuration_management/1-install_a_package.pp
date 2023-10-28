# package resource for Flask using pip3
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}

# install pip3 if not already installed:

package { 'python3-pip':
  ensure => 'installed',
}

# Ensure pip3 is installed, and then install Flask with the specified version.
class { 'python3-pip':
  ensure => 'installed',
} -> package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
