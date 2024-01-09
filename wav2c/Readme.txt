==============================================================================
    wav2c v1.0
    by Matt Bigelow
    04/18/2008
==============================================================================

------------------------------------------------------------------------------
    USAGE:
------------------------------------------------------------------------------
The first step is to convert your audio file into an 8 bit wav (preferably
mono, or you will get 2 or more arrays of data) at 11025Hz or 22050Hz or so.
This can be done using Audacity or Wav-to-wav or something similar.

The next step is to convert that wav file into C code.

------------------------------------------------------------------------------
    WINDOWS:
------------------------------------------------------------------------------
The easiest way to use this program is to just drag and drop the wav file you
wish to convert onto wav2c.exe.  The C and H files will appear in the same
folder the wav file is in.

Otherwise, you can use a command prompt with the following syntax:
wav2c <input.wav>

Where <input.wav> is the (path, if necessary) and file name of the file
you wish to convert.

------------------------------------------------------------------------------
    LINUX/OSX:
------------------------------------------------------------------------------
You need to compile wav2c.c by typing "make" (sans quotes) in the directory
wav2c.c and Makefile are in.  Then use the following syntax:
wav2c <input.wav>

Where <input.wav> is the (path, if necessary) and file name of the file
you wish to convert.

------------------------------------------------------------------------------
    NOTES:
------------------------------------------------------------------------------
 - For simplicity, this program does not allow you to specify output file(s).
 - This program has not been tested on OSX.  It should work in theory.
 - If you convert a file with more than one channel, the names of the arrays
   created will be different than a file with only one channel.  This is so
   multiple arrays can be accommodated.
