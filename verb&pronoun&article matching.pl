#!/usr/bin/perl
use strict;
use warnings;
open FILE, "prasad.txt" or die "unable open the inputi fle $!\n";
my $sentence = <FILE>;
print "enter word\n";
my $word = <STDIN>;
chomp($word);
if ($sentence =~ /$word/) { 
print "the text matchxes the sentence\n";
if ($word =~ /(\w+)ed$/) {
	print "a past participle or past tense form";
}elsif ($word =~ /(\w+)en$/) {
	print "a past participle";
} elsif ($word =~ /(\w+)ing$/) {
	print "an ing form";
} elsif ($word =~ /\b[ihmostwy][eithou]?[emruy]?[ym]?\b/&$word !~ /\bthe\b/) {
	print "personal pronoun or subject and object pronouns";
} elsif ($word =~ /(\w+)self$/) {
	print "reflexive pronouns";
}  elsif ($word =~ /\bwh[aio][cmst]?[hms]?[e]?\b/) {
	print "interrogative pronouns";
}elsif ($word =~ /\b[hmoty][ihouy][enrsu]?[eisr]?[isr]?[s]?\b/&$word !~ /\bmore|the\b/) {
	print "possessive pronouns";
}elsif ($word =~ /\bwh[io]?[cms]?[eh]?|wh[io][cm][h]?[ever]?\b/) {
	print "relative pronouns";
} elsif ($word =~ /\bth[aeio][st]?[e]?\b/&$word !~ /\bthe\b/) {
	print "demonstrative pronouns";
} elsif ($word =~ /\bany|every|some|no(body)?(\s?one)?(thing)?|[abfmns][aelon][eilhmntvey][ey]?[hr]?[ae]?[l]?\b/) {
	print "indefinite pronouns"; 
} elsif ($word =~ /\b[at][hn]?[e]?\b/) {
	print "article";
} else {
	print "the word is other\n";
} 
} else {
print "the text not matches the sentence\n";
}
