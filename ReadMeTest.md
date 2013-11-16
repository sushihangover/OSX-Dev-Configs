Grammar Explorer based on Gtk# for cross-platform Irony work in Mono 3.2.X and MonoDevelop/Xamarin 4.1.X/4.2.X

Instructions for building on Mono:

Via MonoDevelop/Xamarin IDE:

Load and build via the Irony_All.MonoDevelop.sln 

Via the cmd line:

Release:

xbuild /p:Configuration=Release Irony_All.MonoDevelop.sln
mono Irony.GrammarExplorer.GtkSharp/bin/Release/Irony.GrammarExplorer.GtkSharp.exe

Debug:

xbuild /p:Configuration=Release Irony_All.MonoDevelop.sln 
mono Irony.GrammarExplorer.GtkSharp/bin/Debug/Irony.GrammarExplorer.GtkSharp.exe

