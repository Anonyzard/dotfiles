-- automatically generated file. Do not edit (see /usr/share/doc/menu/html)

local awesome = awesome

Debian_menu = {}

Debian_menu["Debian_Aplicaciones_Accesibilidad"] = {
	{"Xmag","xmag"},
}
Debian_menu["Debian_Aplicaciones_Ciencia_Matemáticas"] = {
	{"Bc", "x-terminal-emulator -e ".."/usr/bin/bc"},
	{"galculator","/usr/bin/galculator","/usr/share/pixmaps/galculator.xpm"},
	{"Xcalc","xcalc"},
}
Debian_menu["Debian_Aplicaciones_Ciencia"] = {
	{ "Matemáticas", Debian_menu["Debian_Aplicaciones_Ciencia_Matemáticas"] },
}
Debian_menu["Debian_Aplicaciones_Consolas"] = {
	{"Bash", "x-terminal-emulator -e ".."/bin/bash --login"},
	{"Dash", "x-terminal-emulator -e ".."/bin/dash -i"},
	{"fish", "x-terminal-emulator -e ".."/usr/bin/fish"},
	{"mksh", "x-terminal-emulator -e ".."/bin/mksh -l"},
	{"Sh", "x-terminal-emulator -e ".."/bin/sh --login"},
	{"Zsh", "x-terminal-emulator -e ".."/bin/zsh"},
}
Debian_menu["Debian_Aplicaciones_Editores"] = {
	{"Xedit","xedit"},
}
Debian_menu["Debian_Aplicaciones_Emuladores_de_terminal"] = {
	{"X-Terminal as root (gksu)","/usr/bin/gksu -u root /usr/bin/x-terminal-emulator","/usr/share/pixmaps/gksu.xpm"},
}
Debian_menu["Debian_Aplicaciones_Gestión_de_archivos"] = {
	{"cdw", "x-terminal-emulator -e ".."/usr/bin/cdw","/usr/share/cdw/pixmaps/cdw.xpm"},
}
Debian_menu["Debian_Aplicaciones_Gráficos"] = {
	{"dotty","/usr/bin/dotty"},
	{"lefty","/usr/bin/lefty"},
	{"X Window Snapshot","xwd | xwud"},
}
Debian_menu["Debian_Aplicaciones_Programación"] = {
	{"Tclsh8.6", "x-terminal-emulator -e ".."/usr/bin/tclsh8.6"},
}
Debian_menu["Debian_Aplicaciones_Red_Comunicación"] = {
	{"Irssi", "x-terminal-emulator -e ".."/usr/bin/irssi"},
	{"PuTTY","/usr/bin/putty","/usr/share/pixmaps/putty.xpm"},
	{"Xbiff","xbiff"},
	{"xtightvncviewer","/usr/bin/xtightvncviewer"},
}
Debian_menu["Debian_Aplicaciones_Red_Monitorización"] = {
	{"Mtr","mtr"},
}
Debian_menu["Debian_Aplicaciones_Red_Navegación_web"] = {
	{"Google Chrome","/opt/google/chrome/google-chrome","/opt/google/chrome/product_logo_32.xpm"},
	{"Links 2","/usr/bin/links2 -g","/usr/share/pixmaps/links2.xpm"},
	{"Links 2 (text)", "x-terminal-emulator -e ".."/usr/bin/links2","/usr/share/pixmaps/links2.xpm"},
	{"Vivaldi","/opt/vivaldi/vivaldi","/opt/vivaldi/product_logo_32.xpm"},
}
Debian_menu["Debian_Aplicaciones_Red_Transferencias_de_archivos"] = {
	{"Transmission BitTorrent Client (GTK)","/usr/bin/transmission-gtk","/usr/share/pixmaps/transmission.xpm"},
}
Debian_menu["Debian_Aplicaciones_Red"] = {
	{ "Comunicación", Debian_menu["Debian_Aplicaciones_Red_Comunicación"] },
	{"GNOME PPP","/usr/bin/gnome-ppp","/usr/share/pixmaps/gnome-ppp.xpm"},
	{ "Monitorización", Debian_menu["Debian_Aplicaciones_Red_Monitorización"] },
	{ "Navegación web", Debian_menu["Debian_Aplicaciones_Red_Navegación_web"] },
	{ "Transferencias de archivos", Debian_menu["Debian_Aplicaciones_Red_Transferencias_de_archivos"] },
}
Debian_menu["Debian_Aplicaciones_Sistema_Administración"] = {
	{"Editres","editres"},
	{"fbpanel","/usr/bin/fbpanel"},
	{"Orphaner - editkeep", "x-terminal-emulator -e ".."su-to-root -c '/usr/sbin/editkeep'"},
	{"Orphaner (all)", "x-terminal-emulator -e ".."su-to-root -c '/usr/sbin/orphaner -a'"},
	{"Orphaner (libs)", "x-terminal-emulator -e ".."su-to-root -c /usr/sbin/orphaner"},
	{"Xclipboard","xclipboard"},
	{"Xfontsel","xfontsel"},
	{"Xkill","xkill"},
	{"Xrefresh","xrefresh"},
}
Debian_menu["Debian_Aplicaciones_Sistema_Gestión_de_paquetes"] = {
	{"Synaptic Package Manager","x-terminal-emulator -e synaptic-pkexec","/usr/share/synaptic/pixmaps/synaptic_32x32.xpm"},
}
Debian_menu["Debian_Aplicaciones_Sistema_Hardware"] = {
	{"fbxkb","/usr/bin/fbxkb"},
	{"Xvidtune","xvidtune"},
}
Debian_menu["Debian_Aplicaciones_Sistema_Monitorización"] = {
	{"Pstree", "x-terminal-emulator -e ".."/usr/bin/pstree.x11","/usr/share/pixmaps/pstree16.xpm"},
	{"Top", "x-terminal-emulator -e ".."/usr/bin/top"},
	{"Xconsole","xconsole -file /dev/xconsole"},
	{"Xev","x-terminal-emulator -e xev"},
	{"Xload","xload"},
}
Debian_menu["Debian_Aplicaciones_Sistema"] = {
	{ "Administración", Debian_menu["Debian_Aplicaciones_Sistema_Administración"] },
	{ "Gestión de paquetes", Debian_menu["Debian_Aplicaciones_Sistema_Gestión_de_paquetes"] },
	{ "Hardware", Debian_menu["Debian_Aplicaciones_Sistema_Hardware"] },
	{ "Monitorización", Debian_menu["Debian_Aplicaciones_Sistema_Monitorización"] },
}
Debian_menu["Debian_Aplicaciones_Visores"] = {
	{"Xditview","xditview"},
}
Debian_menu["Debian_Aplicaciones"] = {
	{ "Accesibilidad", Debian_menu["Debian_Aplicaciones_Accesibilidad"] },
	{ "Ciencia", Debian_menu["Debian_Aplicaciones_Ciencia"] },
	{ "Consolas", Debian_menu["Debian_Aplicaciones_Consolas"] },
	{ "Editores", Debian_menu["Debian_Aplicaciones_Editores"] },
	{ "Emuladores de terminal", Debian_menu["Debian_Aplicaciones_Emuladores_de_terminal"] },
	{ "Gestión de archivos", Debian_menu["Debian_Aplicaciones_Gestión_de_archivos"] },
	{ "Gráficos", Debian_menu["Debian_Aplicaciones_Gráficos"] },
	{ "Programación", Debian_menu["Debian_Aplicaciones_Programación"] },
	{ "Red", Debian_menu["Debian_Aplicaciones_Red"] },
	{ "Sistema", Debian_menu["Debian_Aplicaciones_Sistema"] },
	{ "Visores", Debian_menu["Debian_Aplicaciones_Visores"] },
}
Debian_menu["Debian_Ayuda"] = {
	{"Xman","xman"},
}
Debian_menu["Debian_Gestores_de_ventanas"] = {
	{"awesome",function () awesome.exec("/usr/bin/awesome") end,"/usr/share/pixmaps/awesome.xpm"},
	{"Bspwm",function () awesome.exec("/usr/bin/bspwm") end},
}
Debian_menu["Debian_Juegos_Acción"] = {
	{"nInvaders", "x-terminal-emulator -e ".."/usr/games/nInvaders"},
	{"Snake4","/usr/games/snake4","/usr/share/pixmaps/snake4.xpm"},
}
Debian_menu["Debian_Juegos_Juguetes"] = {
	{"Oclock","oclock"},
	{"Xclock (analog)","xclock -analog"},
	{"Xclock (digital)","xclock -digital -update 1"},
	{"Xeyes","xeyes"},
	{"Xlogo","xlogo"},
}
Debian_menu["Debian_Juegos"] = {
	{ "Acción", Debian_menu["Debian_Juegos_Acción"] },
	{ "Juguetes", Debian_menu["Debian_Juegos_Juguetes"] },
}
Debian_menu["Debian"] = {
	{ "Aplicaciones", Debian_menu["Debian_Aplicaciones"] },
	{ "Ayuda", Debian_menu["Debian_Ayuda"] },
	{ "Gestores de ventanas", Debian_menu["Debian_Gestores_de_ventanas"] },
	{ "Juegos", Debian_menu["Debian_Juegos"] },
}

debian = { menu = { Debian_menu = Debian_menu } }
return debian