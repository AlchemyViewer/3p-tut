# 3p-tut

[Autobuild][] packaged  tut.

[Autobuild]: https://github.com/secondlife/autobuild

This repository has the code drop from tut 2008-11-30 (they use dates
as versions) in the 'vendor' branch, with Linden Lab changes applied
in the 'default' branch.

The sources are all in the directory 'tut'; when unpacked from the tut
distribution that directory was 'tut-2008-11-30' but has been renamed.
That version identifier was moved into the 'build-cmd.sh' script as
part of the new convention for handling version numbers (creating a
version_file rather than hard coding it). See comments in build-cmd.sh
