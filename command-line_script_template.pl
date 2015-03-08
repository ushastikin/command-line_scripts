#!/usr/bin/perl

# this script is based on examples from
# http://perldoc.perl.org/Getopt/Long.html#SYNOPSIS
#
# Pod::Usage can be used for more universal knobs parsing, but seems to be
# not working in old perl versiond
#
# Getopt::Long::Descriptive can be used instead of Getopt::Long + Pod::Usage,
# but is not included in Perl by default

use Getopt::Long;

my $help_message = "Usage: $0 [options]\n
Script description\n
Specific options:\n
	-f, --file=FILE		Set file path to FILE
\nCommon options:\n
	-h, --help		Show this message
";
my $file;
GetOptions (
        "file=s" => \$file, # -file will set string value to $file
        "help", # -help will set $opt_help to true
        ) or die($help_message);     
print $help_message if $opt_help;

# script code
