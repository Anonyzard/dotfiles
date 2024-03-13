local awesome = awesome

categories = {}
categories["accesibility"] = {}
categories["Game"] = {}
categories["Office"] = {}
categories["System"] = {}
menu = {}

menu["Debian_Aplicaciones_Accesibilidad"] = {
	{"Xmag","xmag"},
}
menu["Debian_Aplicaciones_Ciencia_Matemáticas"] = {
	{"Bc", "x-terminal-emulator -e ".."/usr/bin/bc"},
	{"galculator","/usr/bin/galculator","/usr/share/pixmaps/galculator.xpm"},
	{"Xcalc","xcalc"},
}
menu["Debian_Aplicaciones_Ciencia"] = {
	{ "Matemáticas", menu["Debian_Aplicaciones_Ciencia_Matemáticas"] },
}
menu["Debian_Aplicaciones_Consolas"] = {
	{"Bash", "x-terminal-emulator -e ".."/bin/bash --login"},
	{"Dash", "x-terminal-emulator -e ".."/bin/dash -i"},
	{"mksh", "x-terminal-emulator -e ".."/bin/mksh -l"},
	{"Sh", "x-terminal-emulator -e ".."/bin/sh --login"},
	{"Zsh", "x-terminal-emulator -e ".."/bin/zsh"},
}
menu["Debian_Aplicaciones_Editores"] = {
	{"Xedit","xedit"},
}
menu["Debian_Aplicaciones_Emuladores_de_terminal"] = {
	{"X-Terminal as root (gksu)","/usr/bin/gksu -u root /usr/bin/x-terminal-emulator","/usr/share/pixmaps/gksu.xpm"},
}
menu["Debian_Aplicaciones_Gestión_de_archivos"] = {
	{"cdw", "x-terminal-emulator -e ".."/usr/bin/cdw","/usr/share/cdw/pixmaps/cdw.xpm"},
}
menu["Debian_Aplicaciones_Gráficos"] = {
	{"dotty","/usr/bin/dotty"},
	{"lefty","/usr/bin/lefty"},
	{"X Window Snapshot","xwd | xwud"},
}
menu["Debian_Aplicaciones_Programación"] = {
	{"Tclsh8.6", "x-terminal-emulator -e ".."/usr/bin/tclsh8.6"},
}
menu["Debian_Aplicaciones_Red_Comunicación"] = {
	{"Irssi", "x-terminal-emulator -e ".."/usr/bin/irssi"},
	{"PuTTY","/usr/bin/putty","/usr/share/pixmaps/putty.xpm"},
	{"Xbiff","xbiff"},
	{"xtightvncviewer","/usr/bin/xtightvncviewer"},
}
menu["Debian_Aplicaciones_Red_Navegación_web"] = {
	{"Google Chrome","/opt/google/chrome/google-chrome","/opt/google/chrome/product_logo_32.xpm"},
	{"Vivaldi","/opt/vivaldi/vivaldi","/opt/vivaldi/product_logo_32.xpm"},
}
menu["Debian_Aplicaciones_Red_Transferencias_de_archivos"] = {
	{"Transmission BitTorrent Client (GTK)","/usr/bin/transmission-gtk","/usr/share/pixmaps/transmission.xpm"},
}
menu["Debian_Aplicaciones_Red"] = {
	{ "Comunicación", menu["Debian_Aplicaciones_Red_Comunicación"] },
	{"GNOME PPP","/usr/bin/gnome-ppp","/usr/share/pixmaps/gnome-ppp.xpm"},
	{ "Navegación web", menu["Debian_Aplicaciones_Red_Navegación_web"] },
	{ "Transferencias de archivos", menu["Debian_Aplicaciones_Red_Transferencias_de_archivos"] },
}
menu["Debian_Aplicaciones_Sistema_Administración"] = {
	{"Editres","editres"},
	{"Orphaner - editkeep", "x-terminal-emulator -e ".."su-to-root -c '/usr/sbin/editkeep'"},
	{"Orphaner (all)", "x-terminal-emulator -e ".."su-to-root -c '/usr/sbin/orphaner -a'"},
	{"Orphaner (libs)", "x-terminal-emulator -e ".."su-to-root -c /usr/sbin/orphaner"},
	{"Xclipboard","xclipboard"},
	{"Xfontsel","xfontsel"},
	{"Xkill","xkill"},
	{"Xrefresh","xrefresh"},
}
menu["Debian_Aplicaciones_Sistema_Gestión_de_paquetes"] = {
	{"Synaptic Package Manager","x-terminal-emulator -e synaptic-pkexec","/usr/share/synaptic/pixmaps/synaptic_32x32.xpm"},
}
menu["Debian_Aplicaciones_Sistema_Hardware"] = {
	{"fbxkb","/usr/bin/fbxkb"},
	{"Xvidtune","xvidtune"},
}
menu["Debian_Aplicaciones_Sistema_Monitorización"] = {
	{"Pstree", "x-terminal-emulator -e ".."/usr/bin/pstree.x11","/usr/share/pixmaps/pstree16.xpm"},
	{"Top", "x-terminal-emulator -e ".."/usr/bin/top"},
	{"Xconsole","xconsole -file /dev/xconsole"},
	{"Xev","x-terminal-emulator -e xev"},
	{"Xload","xload"},
}
menu["Debian_Aplicaciones_Sistema"] = {
	{ "Administración", menu["Debian_Aplicaciones_Sistema_Administración"] },
	{ "Gestión de paquetes", menu["Debian_Aplicaciones_Sistema_Gestión_de_paquetes"] },
	{ "Hardware", menu["Debian_Aplicaciones_Sistema_Hardware"] },
	{ "Monitorización", menu["Debian_Aplicaciones_Sistema_Monitorización"] },
}
menu["Debian_Aplicaciones_Visores"] = {
	{"Xditview","xditview"},
}
menu["Debian_Aplicaciones"] = {
	{ "Accesibilidad", menu["Debian_Aplicaciones_Accesibilidad"] },
	{ "Ciencia", menu["Debian_Aplicaciones_Ciencia"] },
	{ "Consolas", menu["Debian_Aplicaciones_Consolas"] },
	{ "Editores", menu["Debian_Aplicaciones_Editores"] },
	{ "Emuladores de terminal", menu["Debian_Aplicaciones_Emuladores_de_terminal"] },
	{ "Gestión de archivos", menu["Debian_Aplicaciones_Gestión_de_archivos"] },
	{ "Gráficos", menu["Debian_Aplicaciones_Gráficos"] },
	{ "Programación", menu["Debian_Aplicaciones_Programación"] },
	{ "Red", menu["Debian_Aplicaciones_Red"] },
	{ "Sistema", menu["Debian_Aplicaciones_Sistema"] },
	{ "Visores", menu["Debian_Aplicaciones_Visores"] },
}
menu["Debian_Ayuda"] = {
	{"Xman","xman"},
}
menu["Debian_Gestores_de_ventanas"] = {
	{"awesome",function () awesome.exec("/usr/bin/awesome") end,"/usr/share/pixmaps/awesome.xpm"},
	{"Bspwm",function () awesome.exec("/usr/bin/bspwm") end},
}
menu["Debian_Juegos_Acción"] = {
	{"Snake4","/usr/games/snake4","/usr/share/pixmaps/snake4.xpm"},
}
menu["Debian_Juegos_Juguetes"] = {
	{"Oclock","oclock"},
	{"Xclock (analog)","xclock -analog"},
	{"Xclock (digital)","xclock -digital -update 1"},
	{"Xeyes","xeyes"},
	{"Xlogo","xlogo"},
}
menu["Debian_Juegos"] = {
	{ "Acción", menu["Debian_Juegos_Acción"] },
	{ "Juguetes", menu["Debian_Juegos_Juguetes"] },
}
menu["Debian_Pantalla_Bloqueapantallas"] = {
	{"Lock Screen (XScreenSaver)","/usr/bin/xscreensaver-command -lock"},
}
menu["Debian_Pantalla_Salvapantallas"] = {
	{"Activate ScreenSaver (Next)","/usr/bin/xscreensaver-command -next"},
	{"Activate ScreenSaver (Previous)","/usr/bin/xscreensaver-command -prev"},
	{"Activate ScreenSaver (Random)","/usr/bin/xscreensaver-command -activate"},
	{"Demo Screen Hacks","/usr/bin/xscreensaver-command -demo"},
	{"Disable XScreenSaver","/usr/bin/xscreensaver-command -exit"},
	{"Enable XScreenSaver","/usr/bin/xscreensaver"},
	{"Reinitialize XScreenSaver","/usr/bin/xscreensaver-command -restart"},
	{"ScreenSaver Preferences","/usr/bin/xscreensaver-command -prefs"},
}
menu["Debian_Pantalla"] = {
	{ "Bloqueapantallas", menu["Debian_Pantalla_Bloqueapantallas"] },
	{ "Salvapantallas", menu["Debian_Pantalla_Salvapantallas"] },
}
menu["Debian"] = {
	{ "Aplicaciones", menu["Debian_Aplicaciones"] },
	{ "Ayuda", menu["Debian_Ayuda"] },
	{ "Gestores de ventanas", menu["Debian_Gestores_de_ventanas"] },
	{ "Juegos", menu["Debian_Juegos"] },
	{ "Pantalla", menu["Debian_Pantalla"] },
}

debian = { menu = { menu = menu } }
return debian