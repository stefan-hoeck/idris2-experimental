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

## Idris2 Version

Interface implementations for the new integer types have
been recently added to the prelude, so these have been
removed from this library.

The latest commit has been built with
Idris 2, version 0.4.0-6f9b926b1.
