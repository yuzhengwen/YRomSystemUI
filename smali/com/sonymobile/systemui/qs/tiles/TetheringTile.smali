.class public Lcom/sonymobile/systemui/qs/tiles/TetheringTile;
.super Lcom/android/systemui/qs/QSTile;
.source "TetheringTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/qs/tiles/TetheringTile$1;,
        Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;

.field private final mController:Lcom/sonymobile/systemui/statusbar/policy/TetheringController;

.field private mForegroundChecker:Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mListening:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;-><init>(Lcom/sonymobile/systemui/qs/tiles/TetheringTile;Lcom/sonymobile/systemui/qs/tiles/TetheringTile$1;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;

    iput-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mForegroundChecker:Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getTetheringController()Lcom/sonymobile/systemui/statusbar/policy/TetheringController;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/TetheringController;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/qs/tiles/TetheringTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->refreshState()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/systemui/qs/tiles/TetheringTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->refreshState()V

    return-void
.end method

.method private collapseOnNewDialog()V
    .locals 4

    new-instance v1, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;-><init>(Lcom/android/systemui/qs/QSTile$Host;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mForegroundChecker:Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mForegroundChecker:Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mForegroundChecker:Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static launchTetherSettings(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setEnabled(Z)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0025

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->launchTetherSettings(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v3, v3, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v3, :cond_3

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sonymobile/systemui/qs/tiles/TetheringDialogDummyActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->collapseOnNewDialog()V

    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method


# virtual methods
.method public handleClick()V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->setEnabled(Z)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4

    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/TetheringController;

    invoke-interface {v2}, Lcom/sonymobile/systemui/statusbar/policy/TetheringController;->isTetheringEnabled()Z

    move-result v0

    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0d012c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    if-eqz v0, :cond_1

    const v1, 0x7f020093

    :goto_1
    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const v1, 0x7f020092

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mListening:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mListening:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/TetheringController;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/statusbar/policy/TetheringController;->addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/TetheringController$TetheringSettingsChangeCallback;)V

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/TetheringController;

    invoke-interface {v0}, Lcom/sonymobile/systemui/statusbar/policy/TetheringController;->registerTetheringBroadcast()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/TetheringController;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/statusbar/policy/TetheringController;->removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/TetheringController$TetheringSettingsChangeCallback;)V

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mCallback:Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->mController:Lcom/sonymobile/systemui/statusbar/policy/TetheringController;

    invoke-interface {v0}, Lcom/sonymobile/systemui/statusbar/policy/TetheringController;->unregisterTetheringBroadcast()V

    goto :goto_0
.end method
