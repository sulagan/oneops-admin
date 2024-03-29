name             "Log"
description      "Log"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1"
maintainer       "OneOps"
maintainer_email "support@oneops.com"
license          "Copyright OneOps, All rights reserved."

grouping 'default',
  :access => "global",
  :packages => [ 'base', 'mgmt.manifest', 'manifest' ]

attribute 'paths',
  :description => "Log file paths",
  :required => "required",
  :data_type => "array",
  :default => '[]',
  :format => {
    :help => 'Path to application log files',
    :category => '1.Paths',
    :order => 1
  }

# attribute 'fields',
  # :description => "Fields",
  # :data_type => "hash",
  # :default => '{}',
  # :format => {
    # :help => 'Dictionary of fields to annotate on each event',
    # :category => '2.Fields',
    # :order => 1
  # }
