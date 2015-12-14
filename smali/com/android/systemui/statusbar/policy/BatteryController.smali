.class public Lcom/android/systemui/statusbar/policy/BatteryController;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryController$ViewHolder;,
        Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    }
.end annotation


# static fields
.field private static final CONTENT_URI_STAMINA_ENABLED:Landroid/net/Uri;

.field private static final CONTENT_URI_STAMINA_THRESHOLD:Landroid/net/Uri;

.field private static final CONTENT_URI_USM_POST_DISABLED:Landroid/net/Uri;

.field private static final CONTENT_URI_USM_POST_ENABLED:Landroid/net/Uri;

.field private static final DEBUG:Z


# instance fields
.field private mBatteryViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BatteryController$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCharged:Z

.field private mCharging:Z

.field private mContext:Landroid/content/Context;

.field private final mExcludedIconsObserver:Landroid/database/ContentObserver;

.field private mLevel:I

.field private mNotificationCreated:Z

.field private mPercentMode:Z

.field private final mPercentModeObserver:Landroid/database/ContentObserver;

.field private mPluggedIn:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPowerSave:Z

.field private final mStaminaEnabledObserver:Landroid/database/ContentObserver;

.field private mStaminaIconExcluded:Z

.field private mStaminaMode:Z

.field private mStaminaThreshold:I

.field private final mStaminaThresholdObserver:Landroid/database/ContentObserver;

.field private final mTextCriticalLimit:I

.field private final mTextLowLimit:I

.field private final mUrgentIconLimit:I

.field private mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private mUsmEnabled:Z

.field private final mUsmPostDisabledObserver:Landroid/database/ContentObserver;

.field private final mUsmPostEnabledObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "BatteryController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/BatteryController;->DEBUG:Z

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/stamina/enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/BatteryController;->CONTENT_URI_STAMINA_ENABLED:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/battery_threshold"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/BatteryController;->CONTENT_URI_STAMINA_THRESHOLD:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/usm/enabled/post-enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/BatteryController;->CONTENT_URI_USM_POST_ENABLED:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/usm/enabled/post-disabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/BatteryController;->CONTENT_URI_USM_POST_DISABLED:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryViews:Ljava/util/ArrayList;

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPercentMode:Z

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaMode:Z

    const/16 v1, 0x64

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaThreshold:I

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUsmEnabled:Z

    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryController$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryController$1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPercentModeObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryController$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryController$2;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaEnabledObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryController$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryController$3;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaThresholdObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryController$4;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryController$4;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUsmPostEnabledObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryController$5;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryController$5;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUsmPostDisabledObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryController$6;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryController$6;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mExcludedIconsObserver:Landroid/database/ContentObserver;

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mNotificationCreated:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPowerManager:Landroid/os/PowerManager;

    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryController$7;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryController$7;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v1}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getPercentMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPercentMode:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isStaminaEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaMode:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getStaminaBatteryThreshold()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaThreshold:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isStaminaIconExcluded()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaIconExcluded:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/BatteryController;->CONTENT_URI_STAMINA_ENABLED:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/BatteryController;->CONTENT_URI_STAMINA_THRESHOLD:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaThresholdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/BatteryController;->CONTENT_URI_USM_POST_ENABLED:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUsmPostEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/BatteryController;->CONTENT_URI_USM_POST_DISABLED:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUsmPostDisabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "somc.show_battery_percent"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPercentModeObserver:Landroid/database/ContentObserver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v4}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v4

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "excluded_system_bar_icons"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mExcludedIconsObserver:Landroid/database/ContentObserver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v4}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v4

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mTextCriticalLimit:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mTextLowLimit:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUrgentIconLimit:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updatePowerSave()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/BatteryController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPercentMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/BatteryController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getPercentMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/BatteryController;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPercentModeObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/BatteryController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/BatteryController;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mExcludedIconsObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateView()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/BatteryController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaMode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/BatteryController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isStaminaEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/BatteryController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaThreshold:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/BatteryController;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getStaminaBatteryThreshold()I

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/policy/BatteryController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUsmEnabled:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/BatteryController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaIconExcluded:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/BatteryController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isStaminaIconExcluded()Z

    move-result v0

    return v0
.end method

.method private createUsbLowNotification(Z)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const v8, 0x7f0d000b

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    if-eqz v3, :cond_0

    const v2, 0x7f0d000b

    if-eqz p1, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const v6, 0x7f0d000c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0201d5

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v10, v8, v6, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mNotificationCreated:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v10, v8, v6}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mNotificationCreated:Z

    goto :goto_0
.end method

.method private fireBatteryLevelChanged()V
    .locals 6

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPluggedIn:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharging:Z

    invoke-interface {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private firePowerSaveChanged()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onPowerSaveChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getBatteryTextColor()I
    .locals 3

    const v0, 0x7f090040

    iget v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mTextCriticalLimit:I

    if-ge v1, v2, :cond_1

    const v0, 0x7f090042

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mTextLowLimit:I

    if-ge v1, v2, :cond_0

    const v0, 0x7f090041

    goto :goto_0
.end method

.method private getPercentMode()Z
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "somc.show_battery_percent"

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v4}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getStaminaBatteryThreshold()I
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/policy/BatteryController;->CONTENT_URI_STAMINA_THRESHOLD:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "threshold"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isStaminaEnabled()Z
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/policy/BatteryController;->CONTENT_URI_STAMINA_ENABLED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStaminaIconExcluded()Z
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "excluded_system_bar_icons"

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v3}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "stamina"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetImageView(I)V
    .locals 5

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/BatteryController$ViewHolder;

    iget-object v0, v3, Lcom/android/systemui/statusbar/policy/BatteryController$ViewHolder;->battery:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setPowerSave(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPowerSave:Z

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPowerSave:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/BatteryController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v1, "BatteryController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Power save is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPowerSave:Z

    if-eqz v0, :cond_2

    const-string v0, "on"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->firePowerSaveChanged()V

    goto :goto_0

    :cond_2
    const-string v0, "off"

    goto :goto_1
.end method

.method private updatePowerSave()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->setPowerSave(Z)V

    return-void
.end method

.method private updateView()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUrgentIconLimit:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    const/4 v11, 0x1

    :goto_0
    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v7, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/policy/BatteryController$ViewHolder;

    iget-object v4, v14, Lcom/android/systemui/statusbar/policy/BatteryController$ViewHolder;->battery:Landroid/view/View;

    iget-boolean v1, v14, Lcom/android/systemui/statusbar/policy/BatteryController$ViewHolder;->batteryLevelvisible:Z

    const v15, 0x7f100131

    invoke-virtual {v4, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharging:Z

    if-nez v15, :cond_2

    if-eqz v11, :cond_6

    :cond_2
    const/4 v15, 0x0

    :goto_2
    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharging:Z

    if-nez v15, :cond_7

    const v15, 0x7f020184

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_3
    const v15, 0x7f100132

    invoke-virtual {v4, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v15, 0x7f100135

    invoke-virtual {v4, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaMode:Z

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaThreshold:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v15, v0, :cond_4

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharging:Z

    if-nez v15, :cond_4

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUsmEnabled:Z

    if-nez v15, :cond_4

    const/4 v10, 0x1

    :cond_4
    if-eqz v10, :cond_8

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaIconExcluded:Z

    if-nez v15, :cond_8

    const/4 v10, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPercentMode:Z

    if-nez v15, :cond_a

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/view/View;->setVisibility(I)V

    const/16 v15, 0x8

    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    const v15, 0x7f100133

    invoke-virtual {v4, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v15, 0x7f020170

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setImageLevel(I)V

    const v15, 0x7f100134

    invoke-virtual {v4, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v15, 0x7f02017f

    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v10, :cond_9

    const/4 v15, 0x0

    :goto_5
    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v16, 0x7f0d00ae

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_6
    const/16 v15, 0x8

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharging:Z

    if-eqz v15, :cond_3

    const v15, 0x7f02017d

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_8
    const/4 v10, 0x0

    goto :goto_4

    :cond_9
    const/16 v15, 0x8

    goto :goto_5

    :cond_a
    if-nez v1, :cond_d

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    const/16 v15, 0x8

    invoke-virtual {v2, v15}, Landroid/view/View;->setVisibility(I)V

    const v15, 0x7f100136

    invoke-virtual {v4, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/systemui/statusbar/BatteryImage;

    if-eqz v10, :cond_b

    const v9, 0x7f02017b

    :goto_7
    invoke-virtual {v5, v9}, Lcom/sonymobile/systemui/statusbar/BatteryImage;->setImageResource(I)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    const/16 v16, 0x63

    move/from16 v0, v16

    if-le v15, v0, :cond_c

    const v6, 0x7f0d000d

    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v15, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/sonymobile/systemui/statusbar/BatteryImage;->setText(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getBatteryTextColor()I

    move-result v15

    invoke-virtual {v5, v15}, Lcom/sonymobile/systemui/statusbar/BatteryImage;->setTextColor(I)V

    goto/16 :goto_6

    :cond_b
    const v9, 0x7f020179

    goto :goto_7

    :cond_c
    const v6, 0x7f0d016a

    goto :goto_8

    :cond_d
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/view/View;->setVisibility(I)V

    const/16 v15, 0x8

    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    const v15, 0x7f100133

    invoke-virtual {v4, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v15, 0x7f020170

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setImageLevel(I)V

    const v15, 0x7f100134

    invoke-virtual {v4, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v15, 0x7f02017f

    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v10, :cond_e

    const/4 v15, 0x0

    :goto_9
    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_e
    const/16 v15, 0x8

    goto :goto_9
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPluggedIn:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharging:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZZ)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryController$ViewHolder;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/statusbar/policy/BatteryController$ViewHolder;-><init>(Landroid/view/View;Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "BatteryController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mPluggedIn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPluggedIn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mCharging="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharging:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mCharged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mPowerSave="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPowerSave:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public isPowerSave()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPowerSave:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    const/high16 v6, 0x42c80000    # 100.0f

    const-string v9, "level"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v6, v9

    const-string v9, "scale"

    const/16 v10, 0x64

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    const-string v6, "plugged"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPluggedIn:Z

    if-eqz v4, :cond_5

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPluggedIn:Z

    const-string v6, "status"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_6

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharged:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharging:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharged:Z

    if-nez v6, :cond_0

    if-ne v5, v11, :cond_7

    :cond_0
    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharging:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0a002b

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_1

    if-ne v4, v11, :cond_8

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mNotificationCreated:Z

    if-nez v6, :cond_1

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/BatteryController;->createUsbLowNotification(Z)V

    :cond_1
    :goto_3
    iget v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    if-ne v6, v2, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPluggedIn:Z

    if-ne v6, v3, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharging:Z

    if-eq v6, v1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateView()V

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->fireBatteryLevelChanged()V

    :cond_4
    :goto_4
    return-void

    :cond_5
    move v6, v8

    goto :goto_0

    :cond_6
    move v6, v8

    goto :goto_1

    :cond_7
    move v6, v8

    goto :goto_2

    :cond_8
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mNotificationCreated:Z

    if-eqz v6, :cond_1

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/policy/BatteryController;->createUsbLowNotification(Z)V

    goto :goto_3

    :cond_9
    const-string v6, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updatePowerSave()V

    goto :goto_4

    :cond_a
    const-string v6, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "mode"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/BatteryController;->setPowerSave(Z)V

    goto :goto_4
.end method

.method public removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBatteryLevelVisible(Landroid/view/View;Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/BatteryController$ViewHolder;

    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/BatteryController$ViewHolder;->parent:Landroid/view/View;

    if-ne p1, v2, :cond_0

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/policy/BatteryController$ViewHolder;->batteryLevelvisible:Z

    if-eq v2, p2, :cond_0

    iput-boolean p2, v1, Lcom/android/systemui/statusbar/policy/BatteryController$ViewHolder;->batteryLevelvisible:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateView()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateResources()V
    .locals 1

    const v0, 0x7f100133

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->resetImageView(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateView()V

    return-void
.end method
