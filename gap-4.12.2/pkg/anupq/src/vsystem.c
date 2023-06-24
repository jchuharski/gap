/****************************************************************************
**
*A  vsystem.c                   ANUPQ source                   Eamonn O'Brien
**
*Y  Copyright 1995-2001,  Lehrstuhl D fuer Mathematik,  RWTH Aachen,  Germany
*Y  Copyright 1995-2001,  School of Mathematical Sciences, ANU,     Australia
**
*/

/* when the standard C command "system" executes, it forks --
   thereby increasing significantly the size of the job;

   this procedure is a Unix-specific version of the command
   which does not fork; in most respects, it is similar to vfork;

   the code was originally written by Werner Nickel for SPARC;
   it was later modified for NeXT machine by Frank Celler */

#include "config.h"

#ifdef HAVE_WORKING_VFORK

#include <unistd.h>
#include <signal.h>
#ifdef HAVE_SYS_WAIT_H
#include <sys/wait.h>
#endif

int vsystem(char *string)
{
   int status;
   int pid;
   void (*f1)();
   void (*f2)();

   if ((pid = vfork()) == 0) {
      execl("/bin/sh", "sh", "-c", string, (char *)0);
      _exit(0x7f);
   } else if (pid == -1)
      return -1;
   else {
      f1 = signal(SIGINT, SIG_IGN);
      f2 = signal(SIGQUIT, SIG_IGN);
      pid = waitpid(pid, &status, 0);
      signal(SIGQUIT, f2);
      signal(SIGINT, f1);
      if (pid != -1)
         return WEXITSTATUS(status);
      else
         return -1;
   }
}

#endif
