{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	system = {
		defaults = {
			NSGlobalDomain = {
				# apple ui theme
				AppleInterfaceStyle = "Dark";
				AppleInterfaceStyleSwitchesAutomatically = false;
				_HIHideMenuBar = false;
				
				# file/document settings
				AppleShowAllExtensions = true;
				NSDocumentSaveNewDocumentsToCloud = false;
				NSTableViewDefaultSizeMode = 1;
				NSTextShowsControlCharacters = true;
				"com.apple.springing.enabled" = true;

				# volume for annoying beep
				"com.apple.sound.beep.volume" = 0.0;

				# scrolling
				AppleShowScrollBars = "Automatic";
				AppleScrollerPagingBehavior = true;
				NSScrollAnimationEnabled = true;
				AppleEnableSwipeNavigateWithScrolls = true;
				AppleEnableMouseSwipeNavigateWithScrolls = true;

				# window settings
				AppleWindowTabbingMode = "always";
				NSAutomaticWindowAnimationsEnabled = false;
				NSDisableAutomaticTermination = false;
				NSWindowResizeTime = 0.2;
				NSWindowShouldDragOnGesture = true;

				# expanded save/print dialog
				NSNavPanelExpandedStateForSaveMode = true;
				NSNavPanelExpandedStateForSaveMode2 = true;
				PMPrintingExpandedStateForPrint = true;
				PMPrintingExpandedStateForPrint2 = true;
			};

			SoftwareUpdate.AutomaticallyInstallMacOSUpdates = false;
			
			WindowManager = {
				AutoHide = true;

				# regular desktop window manager
				StandardHideDesktopIcons = false;
				StandardHideWidgets = false;

				# stage manager
				EnableTilingOptionAccelerator = true;
				EnableStandardClickToShowDesktop = false;
				EnableTiledWindowMargins = true;
				EnableTilingByEdgeDrag = true;
				EnableTopTilingByEdgeDrag = true;
				GloballyEnabled = false;
				HideDesktop = false;
				StageManagerHideWidgets = false;
			};

			finder = {
				# AppleShowAllFiles = false;
				CreateDesktop = true;
				FXDefaultSearchScope = "SCcf"; # search defaults to current folder
				FXEnableExtensionChangeWarning = false;
				FXPreferredViewStyle = "Nisv"; # list view as default
				FXRemoveOldTrashItems = false;
				# NewWindowTarget = "Other";
				# NewWindowTargetPath = "file:///Users/${inputs.username}/files/downloads";
				QuitMenuItem = true;
				ShowExternalHardDrivesOnDesktop = true;
				ShowHardDrivesOnDesktop = false;
				ShowMountedServersOnDesktop = false;
				ShowPathbar = true;
				ShowRemovableMediaOnDesktop = true;
				ShowStatusBar = true;
				_FXShowPosixPathInTitle = true;
				_FXSortFoldersFirst = true;
				_FXSortFoldersFirstOnDesktop = true;
			};

			loginwindow = {
				DisableConsoleAccess = false;
				GuestEnabled = false;
				LoginwindowText = "\\U03bb";
				PowerOffDisabledWhileLoggedIn = false;
				RestartDisabled = false;
				RestartDisabledWhileLoggedIn = false;
				SHOWFULLNAME = true;
				ShutDownDisabled = false;
				ShutDownDisabledWhileLoggedIn = false;
				SleepDisabled = false;
				# autoLoginUser = "Off";
			};

			universalaccess = {
				closeViewScrollWheelToggle = false;
				closeViewZoomFollowsFocus = false;
				mouseDriverCursorSize = 1.0;
				reduceMotion = true;
				reduceTransparency = true;
			};
		};
	};
}
