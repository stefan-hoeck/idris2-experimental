# idris2-experimental : Bring recent compiler additions to the standard libs

Recent additions to the Idris2 compiler like new primitives or
pragmas take some time before they appear in the standard
libraries, since the official standard libraries must
be compilable both from the bootstrap compiler (which
comes without its own set of standar libraries) and
the previous Idris2 version.

This library allows impatient people (like myself) to
try out the latest additions to the compiler.
Please note, that only stuff that might later be added
to the `prelude` or `base` should go in this library.

Contributions highly welcome!
