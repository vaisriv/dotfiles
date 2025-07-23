{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    programs.vesktop = {
        enable = true;

        settings = {
            discordBranch = "stable";
            minimizeToTray = true;
            arRPC = true;
            splashColor = "rgb(239, 239, 240)";
        };

        vencord = {
            useSystem = true;
            settings = {
                autoUpdate = true;
                autoUpdateNotification = true;
                useQuickCss = true;
                themeLinks = [];
                eagerPatches = false;
                # enabledThemes = [ "stylix.theme.css" ];
                enableReactDevtools = false;
                frameless = false;
                transparent = false;
                winCtrlQ = false;
                macosVibrancyStyle = "sidebar";
                disableMinSize = false;
                winNativeTitleBar = false;

                plugins = {
                    BadgeAPI = {enabled = true;};
                    CommandsAPI = {enabled = true;};
                    ContextMenuAPI = {enabled = true;};
                    MemberListDecoratorsAPI = {enabled = false;};
                    MessageAccessoriesAPI = {enabled = true;};
                    MessageDecorationsAPI = {enabled = false;};
                    MessageEventsAPI = {enabled = true;};
                    MessagePopoverAPI = {enabled = true;};
                    NoticesAPI = {enabled = true;};
                    ServerListAPI = {enabled = false;};
                    SettingsStoreAPI = {enabled = true;};
                    NoTrack = {
                        enabled = true;
                        disableAnalytics = true;
                    };
                    Settings = {
                        enabled = true;
                        settingsLocation = "aboveActivity";
                    };
                    AlwaysAnimate = {enabled = false;};
                    AlwaysTrust = {
                        enabled = true;
                        domain = true;
                        file = true;
                    };
                    AnonymiseFileNames = {enabled = false;};
                    BANger = {enabled = false;};
                    BetterFolders = {enabled = false;};
                    BetterGifAltText = {enabled = false;};
                    BetterNotesBox = {enabled = false;};
                    BetterRoleDot = {enabled = false;};
                    BetterUploadButton = {enabled = false;};
                    BiggerStreamPreview = {enabled = false;};
                    BlurNSFW = {enabled = false;};
                    CallTimer = {
                        enabled = true;
                        format = "stopwatch";
                    };
                    ClearURLs = {enabled = false;};
                    ColorSighted = {enabled = false;};
                    ConsoleShortcuts = {enabled = false;};
                    CrashHandler = {enabled = true;};
                    CustomRPC = {
                        enabled = false;
                        type = 0;
                    };
                    Experiments = {
                        enabled = true;
                        enableIsStaff = false;
                        forceStagingBanner = false;
                        toolbarDevMenu = false;
                    };
                    F8Break = {enabled = false;};
                    FakeNitro = {
                        enabled = true;
                        enableEmojiBypass = true;
                        enableStickerBypass = true;
                        enableStreamQualityBypass = true;
                        transformStickers = true;
                        transformEmojis = true;
                        transformCompoundSentence = false;
                        emojiSize = 48;
                        hyperLinkText = "{{NAME}}";
                        useHyperLinks = true;
                    };
                    FakeProfileThemes = {enabled = false;};
                    FavoriteEmojiFirst = {enabled = false;};
                    FixInbox = {enabled = false;};
                    ForceOwnerCrown = {enabled = true;};
                    FriendInvites = {enabled = false;};
                    GameActivityToggle = {
                        enabled = true;
                        oldIcon = false;
                    };
                    GifPaste = {enabled = true;};
                    iLoveSpam = {enabled = false;};
                    IgnoreActivities = {enabled = false;};
                    ImageZoom = {
                        enabled = true;
                        size = 100;
                        zoom = 2;
                        nearestNeighbour = false;
                        square = false;
                        saveZoomValues = true;
                        zoomSpeed = 0.47917618987818666;
                    };
                    InvisibleChat = {
                        enabled = false;
                        savedPasswords = "password, Password";
                    };
                    KeepCurrentChannel = {enabled = false;};
                    LastFMRichPresence = {enabled = false;};
                    LoadingQuotes = {
                        enabled = true;
                        replaceEvents = true;
                        enableDiscordPresetQuotes = false;
                        additionalQuotes = "";
                        additionalQuotesDelimiter = "|";
                        enablePluginPresetQuotes = true;
                    };
                    MemberCount = {enabled = false;};
                    MessageClickActions = {enabled = false;};
                    MessageLinkEmbeds = {enabled = false;};
                    MessageLogger = {enabled = false;};
                    MessageTags = {enabled = false;};
                    MoreCommands = {enabled = true;};
                    MoreKaomoji = {enabled = true;};
                    MoreUserTags = {enabled = false;};
                    Moyai = {
                        enabled = false;
                        volume = 0.5;
                        triggerWhenUnfocused = true;
                        ignoreBots = true;
                        ignoreBlocked = true;
                    };
                    MutualGroupDMs = {enabled = false;};
                    NoBlockedMessages = {enabled = false;};
                    NoDevtoolsWarning = {enabled = false;};
                    NoF1 = {enabled = false;};
                    NoPendingCount = {
                        enabled = true;
                        hideFriendRequestsCount = true;
                        hideMessageRequestsCount = true;
                        hidePremiumOffersCount = true;
                    };
                    NoProfileThemes = {enabled = false;};
                    NoRPC = {enabled = false;};
                    NoReplyMention = {enabled = false;};
                    NoScreensharePreview = {enabled = false;};
                    NoSystemBadge = {enabled = false;};
                    NoUnblockToJump = {enabled = false;};
                    NSFWGateBypass = {enabled = false;};
                    oneko = {enabled = false;};
                    OpenInApp = {
                        enabled = true;
                        spotify = true;
                        steam = false;
                        epic = false;
                        tidal = true;
                        itunes = true;
                    };
                    PermissionsViewer = {enabled = true;};
                    petpet = {enabled = true;};
                    PinDMs = {
                        enabled = false;
                        pinOrder = 1;
                        dmSectionCollapsed = false;
                        canCollapseDmSection = false;
                    };
                    PlainFolderIcon = {enabled = false;};
                    PlatformIndicators = {enabled = false;};
                    QuickMention = {enabled = false;};
                    QuickReply = {enabled = false;};
                    ReactErrorDecoder = {enabled = false;};
                    ReadAllNotificationsButton = {enabled = false;};
                    RelationshipNotifier = {
                        enabled = true;
                        offlineRemovals = true;
                        groups = true;
                        servers = true;
                        friends = true;
                        friendRequestCancels = true;
                        notices = false;
                    };
                    RevealAllSpoilers = {enabled = false;};
                    ReverseImageSearch = {enabled = false;};
                    ReviewDB = {enabled = false;};
                    RoleColorEverywhere = {
                        enabled = false;
                        chatMentions = true;
                        memberList = true;
                        voiceUsers = true;
                    };
                    SendTimestamps = {enabled = false;};
                    ServerListIndicators = {enabled = false;};
                    ShikiCodeblocks = {
                        enabled = true;
                        theme = "https://raw.githubusercontent.com/shikijs/shiki/0b28ad8ccfbf2615f2d9d38ea8255416b8ac3043/packages/shiki/themes/dark-plus.json";
                        tryHljs = "SECONDARY";
                        useDevIcon = "GREYSCALE";
                        bgOpacity = 100;
                    };
                    ShowAllMessageButtons = {enabled = false;};
                    ShowConnections = {enabled = false;};
                    ShowHiddenChannels = {
                        enabled = true;
                        showMode = 0;
                        hideUnreads = true;
                        defaultAllowedUsersAndRolesDropdownState = true;
                    };
                    ShowMeYourName = {
                        enabled = true;
                        mode = "user";
                        displayNames = true;
                        inReplies = true;
                    };
                    SilentMessageToggle = {enabled = false;};
                    SilentTyping = {
                        enabled = true;
                        showIcon = false;
                        isEnabled = true;
                    };
                    SortFriendRequests = {enabled = false;};
                    SpotifyControls = {
                        enabled = false;
                        hoverControls = false;
                    };
                    SpotifyCrack = {
                        enabled = true;
                        noSpotifyAutoPause = true;
                        keepSpotifyActivityOnIdle = false;
                    };
                    SpotifyShareCommands = {enabled = true;};
                    StartupTimings = {enabled = true;};
                    SupportHelper = {enabled = true;};
                    TextReplace = {enabled = false;};
                    TimeBarAllActivities = {enabled = false;};
                    Translate = {enabled = false;};
                    TypingIndicator = {enabled = false;};
                    TypingTweaks = {enabled = false;};
                    Unindent = {enabled = true;};
                    UnsuppressEmbeds = {enabled = false;};
                    UrbanDictionary = {enabled = true;};
                    UserVoiceShow = {enabled = false;};
                    USRBG = {enabled = false;};
                    UwUifier = {enabled = false;};
                    ValidUser = {enabled = false;};
                    VoiceChatDoubleClick = {enabled = false;};
                    VcNarrator = {enabled = false;};
                    VencordToolbox = {enabled = false;};
                    ViewIcons = {enabled = false;};
                    ViewRaw = {
                        enabled = true;
                        clickMethod = "Left";
                    };
                    VolumeBooster = {
                        enabled = true;
                        multiplier = 2;
                    };
                    GreetStickerPicker = {enabled = true;};
                    WhoReacted = {enabled = false;};
                    Wikisearch = {enabled = true;};
                    FavoriteGifSearch = {enabled = false;};
                    VoiceMessages = {
                        enabled = true;
                        noiseSuppression = true;
                        echoCancellation = true;
                    };
                    CopyUserURLs = {enabled = false;};
                    Dearrow = {enabled = false;};
                    FixSpotifyEmbeds = {enabled = true;};
                    NoMosaic = {enabled = false;};
                    NoTypingAnimation = {enabled = false;};
                    NormalizeMessageLinks = {enabled = false;};
                    OnePingPerDM = {
                        enabled = true;
                        channelToAffect = "both_dms";
                        allowMentions = false;
                        allowEveryone = false;
                    };
                    PermissionFreeWill = {enabled = false;};
                    PictureInPicture = {enabled = false;};
                    PreviewMessage = {enabled = false;};
                    SecretRingToneEnabler = {enabled = false;};
                    SuperReactionTweaks = {enabled = false;};
                    ThemeAttributes = {enabled = false;};
                    ClientTheme = {enabled = false;};
                    Decor = {enabled = false;};
                    NotificationVolume = {enabled = false;};
                    XSOverlay = {enabled = false;};
                    DisableCallIdle = {enabled = true;};
                    NewGuildSettings = {enabled = false;};
                    ChatInputButtonAPI = {enabled = true;};
                    BetterGifPicker = {enabled = false;};
                    FixCodeblockGap = {enabled = false;};
                    FixYoutubeEmbeds = {enabled = false;};
                    BetterRoleContext = {enabled = false;};
                    BetterSettings = {enabled = false;};
                    FriendsSince = {enabled = true;};
                    OverrideForumDefaults = {enabled = false;};
                    ResurrectHome = {enabled = false;};
                    PartyMode = {
                        enabled = false;
                        superIntensePartyMode = 0;
                    };
                    ShowHiddenThings = {enabled = false;};
                    AutomodContext = {enabled = false;};
                    BetterSessions = {enabled = false;};
                    CtrlEnterSend = {enabled = false;};
                    CustomIdle = {enabled = false;};
                    ImageLink = {enabled = false;};
                    ImplicitRelationships = {enabled = false;};
                    MessageLatency = {enabled = false;};
                    NoDefaultHangStatus = {enabled = false;};
                    NoServerEmojis = {enabled = false;};
                    PauseInvitesForever = {enabled = false;};
                    ReplaceGoogleSearch = {enabled = false;};
                    ReplyTimestamp = {enabled = false;};
                    ShowTimeoutDuration = {enabled = false;};
                    StreamerModeOnStream = {enabled = false;};
                    UnlockedAvatarZoom = {
                        enabled = false;
                        zoomMultiplier = 4;
                    };
                    ValidReply = {enabled = false;};
                    VoiceDownload = {enabled = false;};
                    ServerInfo = {enabled = false;};
                    MessageUpdaterAPI = {enabled = false;};
                    UserSettingsAPI = {enabled = true;};
                    AppleMusicRichPresence = {enabled = false;};
                    ConsoleJanitor = {enabled = false;};
                    CopyEmojiMarkdown = {enabled = false;};
                    DontRoundMyTimestamps = {enabled = true;};
                    MentionAvatars = {enabled = false;};
                    NoOnboardingDelay = {enabled = false;};
                    Summaries = {enabled = false;};
                    YoutubeAdblock = {enabled = true;};
                    AlwaysExpandRoles = {enabled = false;};
                    FullSearchContext = {enabled = false;};
                    AccountPanelServerProfile = {enabled = false;};
                    CopyFileContents = {enabled = false;};
                    NoMaskedUrlPaste = {enabled = false;};
                    StickerPaste = {enabled = false;};
                    UserMessagesPronouns = {
                        enabled = true;
                        pronounsFormat = "LOWERCASE";
                        pronounSource = 0;
                        showSelf = true;
                        showInMessages = true;
                        showInProfile = true;
                    };
                    DynamicImageModalAPI = {enabled = false;};
                    FixImagesQuality = {enabled = false;};
                    "WebRichPresence (arRPC)" = {enabled = false;};
                    FullUserInChatbox = {enabled = false;};
                    WebKeybinds = {enabled = true;};
                    WebScreenShareFixes = {enabled = true;};
                    WebContextMenus = {
                        enabled = true;
                        addBack = true;
                    };
                    IrcColors = {enabled = false;};
                    HideMedia = {enabled = false;};
                    ExpressionCloner = {enabled = true;};
                    DisableDeepLinks = {enabled = true;};
                };

                notifications = {
                    timeout = 5000;
                    position = "bottom-right";
                    useNative = "not-focused";
                    logLimit = 50;
                };

                notifyAboutUpdates = true;
            };
        };
    };

    stylix.targets.vesktop.enable = false;
}
