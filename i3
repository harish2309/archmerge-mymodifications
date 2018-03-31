#####################################################################################################################
#####################################################################################################################
#################                          Start of all the settings                                #################
#####################################################################################################################
#####################################################################################################################


# KEY DEFINITIONS TO REMEMBER

# $Mod = WINDOWS key or Super key or Mod4
# Mod1 = ALT key
# Control = CTRL key
# Shift = SHIFT key
# Escape = ESCAPE key
# Return = ENTER or RETURN key
# Pause = PAUSE key
# Print = PRINT key
# Tab = TAB key


#####################################################################################################################
#################                          Define the $mod variable/key                             #################
#####################################################################################################################

# Key to rule them all : Super(Windows) or Alt key?

# Mod4 = Windows or Super key on keyboard
# Mod1 = Alt key on keyboard

#Set Alt key
#set $mod Mod1

#set Super key
set $mod Mod4



#####################################################################################################################
#################                          Define the movements keys - variables                    #################
#####################################################################################################################


#This is setup for qwerty
set $up l
set $down k
set $left j
set $right semicolon

#This is setup for azerty
#set $up l
#set $down k
#set $left j
#set $right m



#####################################################################################################################
#################                          Single and Dual screen                                   #################
#####################################################################################################################


# setting variables for later use
# use xrandr and/or arandr to know the names of your monitors
# use this line to tell which monitor is on the right
# xrandr --output DVI-I-2 --right-of DVI-I-1 --auto
exec --no-startup-id xrandr --output HDMI2 --right-of HDMI1 --auto


# my current setup
set $firstMonitor HDMI1
set $secondMonitor HDMI2

#set $firstMonitor LVDS1
#set $secondMonitor LVDS1

#set $firstMonitor DVI-I-2
#set $secondMonitor VGA-0

#set $firstMonitor DVI-I-2
#set $secondMonitor DVI-I-3

#set $firstMonitor DVI-0
#set $secondMonitor DVI-1

workspace 1 output $firstMonitor
workspace 2 output $firstMonitor
workspace 3 output $firstMonitor
workspace 4 output $firstMonitor
workspace 5 output $firstMonitor
workspace 6 output $secondMonitor
workspace 7 output $secondMonitor
workspace 8 output $secondMonitor
workspace 9 output $secondMonitor
workspace 10 output $secondMonitor

                                      
                                       
# switch to workspace
bindsym $mod+1 workspace 1
bindsym $mod+2 workspace 2
bindsym $mod+3 workspace 3
bindsym $mod+4 workspace 4
bindsym $mod+5 workspace 5
bindsym $mod+6 workspace 6
bindsym $mod+7 workspace 7
bindsym $mod+8 workspace 8
bindsym $mod+9 workspace 9
bindsym $mod+0 workspace 10

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace 1; workspace 1
bindsym $mod+Shift+2 move container to workspace 2; workspace 2
bindsym $mod+Shift+3 move container to workspace 3; workspace 3
bindsym $mod+Shift+4 move container to workspace 4; workspace 4
bindsym $mod+Shift+5 move container to workspace 5; workspace 5
bindsym $mod+Shift+6 move container to workspace 6; workspace 6
bindsym $mod+Shift+7 move container to workspace 7; workspace 7
bindsym $mod+Shift+8 move container to workspace 8; workspace 8
bindsym $mod+Shift+9 move container to workspace 9; workspace 9
bindsym $mod+Shift+0 move container to workspace 10; workspace 10



#####################################################################################################################
#################                          3 menu's in ArchMerge                                     #################
#####################################################################################################################

# start dmenu
bindsym $mod+shift+d exec --no-startup-id dmenu_run -i -nb '#191919' -nf '#fea63c' -sb '#fea63c' -sf '#191919' -fn 'NotoMonoRegular:bold:pixelsize=14'

# gmrun
bindsym mod1+F2 exec --no-startup-id gmrun

# start xfce-appfinder
bindsym mod1+F3 exec --no-startup-id xfce4-appfinder

# start rofi full 
bindsym $mod+F11 exec --no-startup-id rofi -show run -fullscreen -font "Noto Sans 13"

# start rofi small
bindsym $mod+z exec --no-startup-id rofi -show run -font "Noto Sans 13"



#####################################################################################################################
#################                          how to exit, logoff, suspend, ...                        #################
#####################################################################################################################


# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec --no-startup-id "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"


#Press $mod (super) and X to exit - check toolbar for next choices
bindsym $mod+X mode "$mode_system"

set $mode_system System (k) lock, (l) logout, (u) suspend, (h) hibernate, (r) reboot, (s) shutdown
mode "$mode_system" {
    bindsym k exec --no-startup-id ~/.config/i3/scripts/i3exit.sh lock, mode "default"
    bindsym l exec --no-startup-id ~/.config/i3/scripts/i3exit.sh logout, mode "default"
    bindsym u exec --no-startup-id ~/.config/i3/scripts/i3exit.sh suspend, mode "default"
    bindsym h exec --no-startup-id ~/.config/i3/scripts/i3exit.sh hibernate, mode "default"
    bindsym r exec --no-startup-id ~/.config/i3/scripts/i3exit.sh reboot, mode "default"
    bindsym s exec --no-startup-id ~/.config/i3/scripts/i3exit.sh shutdown, mode "default"

    # back to normal: Enter or Escape
    bindsym Return mode "default"
    bindsym Escape mode "default"
}



#####################################################################################################################
#################                          reload changed configuration                             #################
#####################################################################################################################


# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart

# reload the configuration file
bindsym $mod+Shift+c reload




#####################################################################################################################
#################                          Stopping an application                                  #################
#####################################################################################################################

# kill focused window
bindsym $mod+Shift+q kill




#####################################################################################################################
#################                          Moving around in i3                                      #################
#####################################################################################################################


# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus
bindsym $mod+$left focus left
bindsym $mod+$down focus down
bindsym $mod+$up focus up
bindsym $mod+$right focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+$left move left
bindsym $mod+Shift+$down move down
bindsym $mod+Shift+$up move up
bindsym $mod+Shift+$right move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right




#####################################################################################################################
#################                          moving around workspaces                                 #################
#####################################################################################################################


# next/previous workspace

bindsym Mod1+Tab workspace next
bindsym Mod1+Shift+Tab workspace prev
bindsym $mod+Tab workspace back_and_forth

#navigate workspaces next / previous
bindsym Mod1+Ctrl+Right workspace next
bindsym Mod1+Ctrl+Left workspace prev

# switch to workspace with urgent window automatically
for_window [urgent=latest] focus





#####################################################################################################################
#################                          Tiling parameters                                        #################
#####################################################################################################################

# orientation for new workspaces
default_orientation horizontal

# split in horizontal orientation
bindsym $mod+h split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
# Super + F in ArchMerge is execute thunar
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
# qwerty/azerty issue for letter z
bindsym $mod+s layout stacking
bindsym $mod+Shift+z layout tabbed
bindsym $mod+e layout toggle split


# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child





#####################################################################################################################
#################                          resize                                                   #################
#####################################################################################################################


# resize window (you can also use the mouse for that)

bindsym $mod+r mode "resize"

mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym $left       resize shrink width 10 px or 10 ppt
        bindsym $down       resize grow height 10 px or 10 ppt
        bindsym $up         resize shrink height 10 px or 10 ppt
        bindsym $right      resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left        resize shrink width 10 px or 10 ppt
        bindsym Down        resize grow height 10 px or 10 ppt
        bindsym Up          resize shrink height 10 px or 10 ppt
        bindsym Right       resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}





#####################################################################################################################
#################                          choose the font                                          #################
#####################################################################################################################

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
# choose your font
font pango:Noto Mono Regular 13





#####################################################################################################################
#################                          assign applications to workspaces                       #################
#####################################################################################################################

# Assign application to start on a specific workspace
# you can find the class with the program xprop

# Workspace 1 browser related
assign [class="Firefox|Vivaldi-stable|Vivaldi-snapshot|Opera"]                      → 1
assign [class="Chromium|Google-chrome"]                                             → 1

# Workspace 2 text editor related
assign [class="sublime-text|sublime_text|Sublime_text|subl|Subl|subl3|Subl3"]       → 2
assign [class="Xed|xed|Brackets|Atom|Code|TelegramDesktop"]                         → 2

# Workspace 3 Inkscape
assign [class="Inkscape"]                                                           → 3

# Workspace 4 Gimp
assign [class="Gimp"]                                                               → 4

# Workspace 5 Images and meld
assign [class="ristretto|Ristretto|shotwell|Shotwell|Xviewer|Nitrogen"]             → 5
assign [class="feh|gthumb|Gthumb|eog|Eog|Pinta|pixeluvo|Pixeluvo"]                  → 5
assign [class="Meld"]                                                               → 5

# Workspace 6 all video related software
assign [class="Vlc|vlc"]                                                            → 6

# Workspace 7 virtual machines and settings
assign [class="Vmplayer|VirtualBox"]						    → 7

# Workspace 8 file managers
assign [class="Nemo|Thunar|Caja|nautilus|Nautilus"]                                 → 8

# Workspace 9 email clients
assign [class="Geary|Evolution"]                                                    → 9

# Workspace 10 music related
assign [class="Spotify|spotify"]                                                    → 10
#fix for spotify not moving to workspace 10
for_window [class="Spotify"] move to workspace 10




#####################################################################################################################
#################                          execute applications at boot time                        #################
#####################################################################################################################

# USER APPLICATIONS TO START AT BOOT

exec --no-startup-id nitrogen --restore &

exec --no-startup-id telegram-desktop  &

#browser
#exec --no-startup-id vivaldi-stable
for_window [class="Vivaldi-stable"] focus

#text-editor
#exec --no-startup-id geany
#exec --no-startup-id atom

#file manager
#exec --no-startup-id thunar

#Mail clients
#exec --no-startup-id evolution

#Music
#exec --no-startup-id spotify
for_window [class="Spotify"] focus



# TRAY APPLICATIONS

# applications that are not installed will not start
# you may see a wheel - hashtag out things you do not want

#Authentication dialog
exec --no-startup-id /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# Updater
exec --no-startup-id pamac-tray

# bluetooth
#exec --no-startup-id blueberry-tray

# network
exec --no-startup-id nm-applet

# num lock activated
exec_always --no-startup-id numlockx on

# dropbox
#exec --no-startup-id dropbox start

# insync
#exec --no-startup-id insync start

# volume
#exec --no-startup-id pasystray
exec --no-startup-id volumeicon

#variety
#exec --no-startup-id variety

# clipman
exec --no-startup-id xfce4-clipman

#Conky
exec --no-startup-id conky -c /home/har3/.config/conky/conkyrc_grey &

#Polybar
exec_always --no-startup-id ~/.config/polybar/launch.sh &

#####################################################################################################################
#################                                 system applications                               #################
#####################################################################################################################

exec --no-startup-id thunar --daemon &
exec --no-startup-id xfce4-power-manager &
# ommitted next line to get super key to bring up the menu in xfce and avoid error then in i3
# activate again if errors occurr
#exec --no-startup-id xfsettingsd &
exec --no-startup-id /usr/lib/xfce4/notifyd/xfce4-notifyd &

#####################################################################################################################
#################                          applications keyboard shortcuts                          #################
#####################################################################################################################

#not workspace related

# terminal
bindsym $mod+Return exec --no-startup-id urxvt;focus
bindsym control+mod1+t exec --no-startup-id termite; focus
bindsym control+mod1+Return exec --no-startup-id termite; focus

#System monitor
bindsym control+Shift+Escape exec --no-startup-id xfce4-taskmanager;focus

#settings
bindsym control+mod1+m exec --no-startup-id xfce4-settings-manager

#catfish
bindsym control+mod1+c exec --no-startup-id catfish;focus

#slimlock
#ArchMerge conflict
#bindsym $mod+k exec slimlock
#use super + X to get to slimlock

#rofi theme selector 
bindsym control+mod1+r exec --no-startup-id rofi-theme-selector

#deadbeef or lollypop
#ArchMerge conflict
#bindsym $mod+m exec --no-startup-id deadbeef;workspace 10; focus

#htop
#ArchMerge conflict
#bindsym $mod+h exec --no-startup-id htop;workspace 7; focus

#pavucontrol
#ArchMerge conflict
bindsym control+mod1+u exec --no-startup-id pavucontrol

# start xfce-appfinder
#ArchMerge does not seem to work
bindsym control+mod1+a exec --no-startup-id xfce4-appfinder



#workspace related

#workspace 1 related
bindsym $mod+F1 exec --no-startup-id exo-open --launch webbrowser;workspace 1;focus
#qwerty/azerty conflict with w
bindsym $mod+w exec --no-startup-id exo-open --launch webbrowser;workspace 1;focus
bindsym control+mod1+f exec --no-startup-id firefox;workspace 1; focus
bindsym control+mod1+v exec --no-startup-id vivaldi-stable;workspace 1; focus
bindsym control+mod1+g exec --no-startup-id chromium;workspace 1;focus

#workspace 2 related
#bindsym $mod+F2 exec --no-startup-id geany;workspace 2;focus
bindsym $mod+F2 exec --no-startup-id atom;workspace 2;focus
#bindsym control+mod1+w exec --no-startup-id geany;workspace 2;focus

#workspace 3 related
bindsym $mod+F3 exec --no-startup-id inkscape;workspace 3;focus

#workspace 4 related
bindsym $mod+F4 exec --no-startup-id gimp;workspace 4;focus

#workspace 5 related
bindsym $mod+F5 exec --no-startup-id meld;workspace 5;focus
bindsym control+mod1+i exec --no-startup-id nitrogen;workspace 5;focus

#workspace 6 related
bindsym $mod+F6 exec --no-startup-id vlc;workspace 6;focus

#workspace 7 related
bindsym $mod+F7 exec --no-startup-id virtualbox;workspace 7;focus

#workspace 8 related
for_window [class="Thunar"] focus
bindsym $mod+F8 exec --no-startup-id thunar;workspace 8;focus
bindsym $mod+Shift+Return exec --no-startup-id thunar; workspace 8;focus
bindsym control+mod1+b exec --no-startup-id thunar;workspace 8;focus

#workspace 9 related
bindsym $mod+F9 exec --no-startup-id evolution;workspace 9;focus
bindsym control+mod1+e exec --no-startup-id evolution;workspace 9;focus
#bindsym $mod+F9 exec --no-startup-id geary;workspace 9;focus
#bindsym control+mod1+e exec --no-startup-id geary;workspace 9;focus

#workspace 10 related
bindsym $mod+F10 exec --no-startup-id spotify;workspace 10;focus
bindsym control+mod1+s exec --no-startup-id spotify;workspace 10;focus




#####################################################################################################################
#################                          screenshots                                              #################
#####################################################################################################################


bindsym Print exec --no-startup-id scrot 'ArchMerge-%Y-%m-%d-%s_screenshot_$wx$h.jpg' -e 'mv $f $$(xdg-user-dir PICTURES)'
bindsym Control+Print exec --no-startup-id xfce4-screenshooter
bindsym Control+Shift+Print exec --no-startup-id gnome-screenshot -i
#bindsym shift+Print exec --no-startup-id shutter





#####################################################################################################################
#################                          floating or tiled                                        #################
#####################################################################################################################


#floating enabled from some programs - find with xprop

for_window [class="Bleachbit"] floating disable
for_window [class="Blueberry.py"] floating enable
for_window [class="Brasero"] floating disable
for_window [class="Galculator"] floating enable
for_window [class="Gnome-disks"] floating disable
for_window [class="^Gnome-font-viewer$"] floating enable
for_window [class="^Gpick$"] floating enable
for_window [class="Hexchat"] floating disable
for_window [class="Imagewriter"] floating enable
for_window [class="Font-manager"] floating enable
for_window [class="qt5ct|Lxappearance"] floating enable
for_window [class="Nitrogen"] floating disable
for_window [class="Pavucontrol"] floating disable
for_window [class="Peek"] floating enable
for_window [class="^Skype$"] floating enable
for_window [class="^Spotify$"] floating disable
for_window [class="System-config-printer.py"] floating enable
for_window [class="Unetbootin.elf"] floating enable
for_window [class="Usb-creator-gtk"] floating enable
for_window [class="^Vlc$"] floating disable
for_window [class="Wine"] floating disable
for_window [class="Xfburn"] floating disable
for_window [class="Xfce4-appfinder"] floating enable
for_window [class="Xfce4-settings-manager"] floating disable
for_window [class="Xfce4-taskmanager"] floating enable
for_window [class="TelegramDesktop"] floating enable

#for_window [instance="gimp"] floating disable
for_window [instance="script-fu"] border normal
for_window [instance="variety"] floating disable


for_window [title="Copying"] floating enable
for_window [title="Deleting"] floating enable
for_window [title="Moving"] floating enable
for_window [title="^Terminator Preferences$"] floating enable


#for_window [window_role="^gimp-toolbox-color-dialog$"] floating enable
for_window [window_role="pop-up"] floating enable
for_window [window_role="^Preferences$"] floating enable
for_window [window_role="setup"] floating enable






#####################################################################################################################
#################                          give focus to applications                               #################
#####################################################################################################################


for_window [class="Gnome-terminal"] focus
for_window [class="Termite"] focus
for_window [class="Terminator"] focus






#####################################################################################################################
#################                          variety for your wallpapers                              #################
#####################################################################################################################


#Variety keybindings mod1 = ALT
# trash wallpaper
bindsym mod1+t exec --no-startup-id variety -t
# next wallpaper
bindsym mod1+n exec --no-startup-id variety -n
bindsym mod1+Right exec --no-startup-id variety -n
# previous wallpaper
bindsym mod1+p exec --no-startup-id variety -p
bindsym mod1+Left exec --no-startup-id variety -p
# favorite wallpaper
bindsym mod1+f exec --no-startup-id variety -f
# pause wallpaper
bindsym mod1+Up exec --no-startup-id variety --pause
# resume wallpaper
bindsym mod1+Down exec --no-startup-id variety --resume





#####################################################################################################################
#################                          audio settings                                           #################
#####################################################################################################################


bindsym XF86AudioRaiseVolume exec --no-startup-id "amixer -D pulse sset Master '5%+'"
bindsym XF86AudioLowerVolume exec --no-startup-id "amixer -D pulse sset Master '5%-'"
bindsym XF86AudioMute exec --no-startup-id "amixer -D pulse set Master toggle"
#https://github.com/acrisci/playerctl/
bindsym XF86AudioPlay exec --no-startup-id playerctl play-pause
bindsym XF86AudioNext exec --no-startup-id playerctl next
bindsym XF86AudioPrev exec --no-startup-id playerctl previous
bindsym XF86AudioStop exec --no-startup-id playerctl stop
#bindsym XF86AudioPlay exec --no-startup-id "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause"
#bindsym XF86AudioNext exec --no-startup-id "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next"
#bindsym XF86AudioPrev exec --no-startup-id "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous"
#bindsym XF86AudioStop exec --no-startup-id "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop"


#####################################################################################################################
#################                          xbacklight                                               #################
#####################################################################################################################

bindsym XF86MonBrightnessUp exec --no-startup-id xbacklight -inc 20 # increase screen brightness
bindsym XF86MonBrightnessDown exec --no-startup-id xbacklight -dec 20 # decrease screen brightness



#####################################################################################################################
#################                          bar toggle                                               #################
#####################################################################################################################


# bar toggle, hide or show
bindsym $mod+b bar mode toggle


#####################################################################################################################
#################                          border control                                           #################
#####################################################################################################################


# Border control
hide_edge_borders both
bindsym $mod+shift+b exec --no-startup-id i3-msg border toggle

#changing border style
#super+t in ArchMerge is starting terminal
bindsym $mod+t border normal
bindsym $mod+y border 1pixel
bindsym $mod+u border none


#new_window pixel 1
new_window normal
#new_window none

#new_float pixel 1
new_float normal
#new_float none




#####################################################################################################################
#################                          Popups  control                                          #################
#####################################################################################################################

#Popups during fullscreen mode
popup_during_fullscreen smart




#####################################################################################################################
#################                          i3 gaps next                                             #################
#####################################################################################################################

# Settings for I3 next gap git
# https://github.com/Airblader/i3/tree/gaps-next
# delete or uncomment the following lines if you do not have it or do not
# want it


for_window [class="^.*"] border pixel 2
gaps inner 5
gaps outer 5
#smart_gaps on
#smart_borders on





#####################################################################################################################
#################                          i3 gaps change                                           #################
#####################################################################################################################



set $mode_gaps Gaps: (o) outer, (i) inner
set $mode_gaps_outer Outer Gaps: +|-|0 (local), Shift + +|-|0 (global)
set $mode_gaps_inner Inner Gaps: +|-|0 (local), Shift + +|-|0 (global)
bindsym $mod+Shift+g mode "$mode_gaps"

mode "$mode_gaps" {
        bindsym o      mode "$mode_gaps_outer"
        bindsym i      mode "$mode_gaps_inner"
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

mode "$mode_gaps_inner" {
        bindsym plus  gaps inner current plus 5
        bindsym minus gaps inner current minus 5
        bindsym 0     gaps inner current set 0

        bindsym Shift+plus  gaps inner all plus 5
        bindsym Shift+minus gaps inner all minus 5
        bindsym Shift+0     gaps inner all set 0

        bindsym Return mode "default"
        bindsym Escape mode "default"
}
mode "$mode_gaps_outer" {
        bindsym plus  gaps outer current plus 5
        bindsym minus gaps outer current minus 5
        bindsym 0     gaps outer current set 0

        bindsym Shift+plus  gaps outer all plus 5
        bindsym Shift+minus gaps outer all minus 5
        bindsym Shift+0     gaps outer all set 0

        bindsym Return mode "default"
        bindsym Escape mode "default"
}




#####################################################################################################################
#################                          compton of i3wm                                          #################
#####################################################################################################################

#if you want transparency on non-focused windows, ...
exec --no-startup-id compton --config ~/.config/i3/compton.conf




#####################################################################################################################
#####################################################################################################################
#####################################################################################################################
#################                          bar appearance                                           #################
#####################################################################################################################
#####################################################################################################################
#####################################################################################################################


client.focused #6c71c4 #6c71c4 #fdf6e3 #6c71c4
client.focused_inactive #073642 #073642 #eee8d5 #6c71c4
client.unfocused #073642 #073642 #93a1a1 #586e75
client.urgent #d33682 #d33682 #fdf6e3 #dc322f



#bar {

#    height 25
#    workspace_buttons yes
#    font pango:Noto Sans 14

#    position top
    #position bottom
    #tray_output $firstMonitor
    #tray_output $secondMonitor

# OPTION 1 : i3status

    # type status_command i3status without the config file and
    # you will get the standard i3status bar
    # Second one is the standard statusbar with my personal settings

#status_command i3status
#status_command i3status -c ~/.config/i3/i3status.conf


# OPTION 2 : i3blocks

    # https://github.com/vivien/i3blocks
    # another way to provide text in the statusbar
    # put hastag in front if not installed

#status_command i3blocks
#status_command i3blocks -c ~/.config/i3/i3blocks.conf
#status_command i3blocks -c ~/.config/i3/i3blocks-rainbow.conf
#status_command i3blocks -c ~/.config/i3/i3blocks-original.conf
#status_command i3blocks -c ~/.config/i3/i3blocks-awesome.conf


# OPTION 3 : conky

    # You can also replace the istatus bar with a conky
    # start-conky-i3statusbar.sh is started and conky will follow
    # documentation : https://i3wm.org/docs/user-contributed/conky-i3bar.html
    # conky configuration is in conky-i3statusbar

#status_command ~/.config/i3/start-conky-i3statusbar.sh


#colors {
#    separator #268bd2
#    background #2F343F
#    statusline #839496
#    focused_workspace #fdf6e3 #6c71c4 #fdf6e3
#    active_workspace #fdf6e3 #6c71c4 #fdf6e3
#    inactive_workspace #002b36 #586e75 #002b36
#    urgent_workspace #d33682 #d33682 #fdf6e3
#  }

# OPTION 4 : polybar
# polybar is launched elsewhere - search for the word
# from the opening of the "bar {...}" till the end has to go or hashtagged out
# in order for the system trayicons to show up in polybar

# DarkGrey background with white text - not focus grey background - black text
# Windows decoration colors
# https://i3wm.org/docs/userguide.ht21ml#_changing_colors
# client.background color
# class                   border  backgr. text    indicator
# client.focused          #4c7899 #285577 #ffffff #2e9ef4
# client.focused_inactive #333333 #5f676a #ffffff #484e50
# client.unfocused        #333333 #222222 #888888 #292d2e
# client.urgent           #2f343a #900000 #ffffff #900000
# client.placeholder      #000000 #0c0c0c #ffffff #000000

#    }


# DarkGrey background with white text - not focus grey background - black text
# Windows decoration colors
# class                 border  backgr. text    indicator
#client.placeholder      #242424 #242424 #242424
#client.background       #242424 #242424 #242424
#client.focused          #4A4A4A #4A4A4A #e5e5e5 #4A4A4A
#client.unfocused        #222222 #222222 #aaaaaa #222222
#client.focused_inactive #222222 #222222 #a9a9a9 #222222
#client.urgent           #d42121 #d42121 #f7f7f7 #d42121


#################################################################
################### BAR APPEARANCE ARCHIVE ######################
#################################################################

# Orange background with black text - not focus grey background - white text
# Windows decoration colors
# class                   border  backgr. text    indicator
# client.background color         #222222
# client.focused          #FFAF00 #FFAF00 #333333 #00AA00
# client.unfocused        #222222 #222222 #aaaaaa #2e9ef4
# client.focused_inactive #333333 #5f676a #ffffff #484e50
# client.urgent           #2f343a #900000 #ffffff #900000

# colors {
#           background #212121
#            statusline #eeeeee
#            separator #666666
            #                  border  backgr. text
#            focused_workspace  #4c7899 #285577 #ffffff
#            active_workspace   #333333 #5f676a #ffffff
#           inactive_workspace #333333 #222222 #888888
#            urgent_workspace   #2f343a #900000 #ffffff
#            }


# Alternatives
# BLue and grey Colors
# https://github.com/Gravemind/ArchLinux/blob/master/.i3/config
# class                   border  backgr. text    indicator
# client.focused          #000000 #285577 #dddddd #0099ff
# client.focused_inactive #000000 #333333 #888888 #484e50
# client.unfocused        #000000 #000000 #555555 #292d2e
# client.urgent           #2f343a #900000 #ffffff #900000



# blue background with white text
# Windows decoration colors
# class                   border  backgr. text    indicator
# client.background color         #222222
# client.focused          #4c7899 #285577 #ffffff #2e9ef4
# client.focused_inactive #333333 #5f676a #ffffff #484e50
# client.unfocused        #333333 #222222 #888888 #292d2e
# client.urgent           #2f343a #900000 #ffffff #900000

# Blue-green background - orange text
# Windows decoration colors
# http://www.fastlinux.eu/_archiv/index.php?page=linux047
# class                    border  backgr. text
# client.focused           #2B6473 #2B6473 #FFA000
# client.focused_inactive  #004050 #004050 #FFA000
# client.unfocused         #004050 #004050 #cccccc
# client.urgent            #900000 #900000 #ffffff


# Red background - black text
# Windows decoration colors
# https://github.com/Blueblur/dotfiles/blob/master/.i3/config
# class                 border  backgr. text    indicator






#####################################################################################################################
#####################################################################################################################
#####################################################################################################################
#####################################################################################################################
#####################################################################################################################
########################################               THE   END          ###########################################
#####################################################################################################################
#####################################################################################################################
#####################################################################################################################
#####################################################################################################################
#####################################################################################################################





#####################################################################################################################
#################                          Scratchpad                                               #################
#####################################################################################################################

# NOT USED

# move the currently focused window to the scratchpad
# bindsym Mod1+Shift+minus move scratchpad

# Show the next scratchpad window or hide the focused scratchpad window.
# If there are multiple scratchpad windows, this command cycles through them.
# bindsym Mod1+minus scratchpad show

#####################################################################################################################
#################                          mouse settings in i3                                     #################
#####################################################################################################################

# NOT USED

# mouse settings
# The middle button over a titlebar kills the window
# bindsym --release button2 kill

# The middle button and a modifer over any part of the window kills the window
# bindsym --whole-window $mod+button2 kill

# The right button toggles floating
# bindsym button3 floating toggle
# bindsym $mod+button3 floating toggle

# The side buttons move the window around
# bindsym button9 move left
# bindsym button8 move right


#####################################################################################################################
#################                          keyboard control                                         #################
#####################################################################################################################

# NOT USED

# Settings of ArchMerge will be applied
#exec --no-startup-id setxkbmap be
#exec --no-startup-id setxkbmap us



#####################################################################################################################
#################                          unclutter                                                #################
#####################################################################################################################

# NOT USED

# get the mouse out of the way with unclutter
#exec --no-startup-id unclutter
