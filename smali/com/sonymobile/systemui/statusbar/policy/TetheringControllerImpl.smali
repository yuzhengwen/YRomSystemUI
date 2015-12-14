.class public Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "TetheringControllerImpl.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/policy/TetheringController;


# instance fields
.field private mContext:Landroid/content/Context;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/systemui/statusbar/policy/TetheringController$TetheringSettingsChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    new-instance v0, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl$1;-><init>(Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private TetheringSettingsChanged()V
    .locals 5

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/policy/TetheringController$TetheringSettingsChangeCallback;

    invoke-interface {v0, v2}, Lcom/sonymobile/systemui/statusbar/policy/TetheringController$TetheringSettingsChangeCallback;->onTetheringSettingsChanged(Z)V

    goto :goto_1

    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private TetheringSettingsChanged(Lcom/sonymobile/systemui/statusbar/policy/TetheringController$TetheringSettingsChangeCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;->isTetheringEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/sonymobile/systemui/statusbar/policy/TetheringController$TetheringSettingsChangeCallback;->onTetheringSettingsChanged(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;->TetheringSettingsChanged()V

    return-void
.end method


# virtual methods
.method public addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/TetheringController$TetheringSettingsChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;->TetheringSettingsChanged(Lcom/sonymobile/systemui/statusbar/policy/TetheringController$TetheringSettingsChangeCallback;)V

    return-void
.end method

.method public isTetheringEnabled()Z
    .locals 3

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public registerTetheringBroadcast()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/TetheringController$TetheringSettingsChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterTetheringBroadcast()V
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
