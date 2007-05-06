use ExtUtils::MakeMaker;

sub MY::postamble { <<'.'; }

dist_both : dist ppmdist 

ppmdist : ppd pure_all
	$(TAR) $(TARFLAGS) $(DISTNAME).ppm.tar blib
	$(RM_RF) blib
	$(RM_RF) pm_to_blib
	$(COMPRESS) $(DISTNAME).ppm.tar
.

WriteMakefile(
  NAME	          => 'Statistics::Lite',
  AUTHOR          => 'Brian Lalonde (brian@webcoder.info)',
  VERSION_FROM    => 'Lite.pm', 
  ABSTRACT_FROM   => 'Lite.pm',
  BINARY_LOCATION => 'Statistics-Lite.ppm.tar.gz',
  dist            => 
  {
    TAR      => 'C:\\Tools\\cygwin\\bin\\tar.exe',
    TARFLAGS => 'cvf',
    COMPRESS => 'C:\\Tools\\cygwin\\bin\\gzip.exe --best',
    SUFFIX   => '.gz',
  },
);
