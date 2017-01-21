The following were written for Linux/OS X so you may need to add steps for Windows.

Unpak the zip wherever you want it. Then,

~$ cd reddit

To run the example server you will need to install a couple of python libraries. First, though, youshould set up a virtual environment. The following lines install the library, then set up the virtual environment within the current directory. When it's done, you'll notice a new directory in the current dir named bin. 

~$ pip install virtualenv
~$ virtualenv .

To start up the virtual env, type 

~$ . bin/activate

When you are done with the server turn it off by 

~$ deactivate

Next, with the virtual env active, you will want to install the following libraries:

~$ pip install bottle
~$ pip install urllib2

If you get errors about not being able to write to, or open, a file, you have an issue with  permissions. DO NOT TRY TO USE SUDO TO FIX THIS, it won't. If you don't know how to fix this, or can't figure it out from a quick google search, look harder. I am happy to help with any problems assuming you can get it installed, but I would prefer that you try to work through the setup by yourself or with peers.

Start the server.

~$ python server.py

The page should now be available in your browser at localhost:9090

Look through the code and come prepared to run and modify the code.