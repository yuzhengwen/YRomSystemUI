.class public Lcom/sonymobile/systemui/qs/tiles/TetheringDialogDummyActivity;
.super Landroid/app/Activity;
.source "TetheringDialogDummyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isWifiEnabled(Landroid/net/wifi/WifiManager;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v4, 0x3

    const/4 v6, -0x1

    const/4 v5, 0x1

    if-ne p1, v5, :cond_2

    if-ne p2, v6, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sonymobile.intent.action.TETHER_CONFIRMATION_DIALOG"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v4}, Lcom/sonymobile/systemui/qs/tiles/TetheringDialogDummyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/TetheringDialogDummyActivity;->finish()V

    goto :goto_0

    :cond_2
    if-ne p1, v4, :cond_0

    const-string v3, "TeteheringDialogDummy"

    const-string v4, "Robin REQUEST_CODE_CONFIRM_DIALOG"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v6, :cond_4

    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/sonymobile/systemui/qs/tiles/TetheringDialogDummyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-direct {p0, v2}, Lcom/sonymobile/systemui/qs/tiles/TetheringDialogDummyActivity;->isWifiEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/TetheringDialogDummyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_saved_state"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v2, v1, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/TetheringDialogDummyActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/TetheringDialogDummyActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/TetheringDialogDummyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200b6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "com.sonymobile.intent.action.Telephony.MPDN_SUPPORT_CHANGED_ACTION"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/sonymobile/systemui/qs/tiles/TetheringDialogDummyActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "mpdnSupport"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sonymobile.intent.action.TETHER_ALLOW_DIALOG"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v6}, Lcom/sonymobile/systemui/qs/tiles/TetheringDialogDummyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sonymobile.intent.action.TETHER_CONFIRMATION_DIALOG"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x3

    invoke-virtual {p0, v1, v4}, Lcom/sonymobile/systemui/qs/tiles/TetheringDialogDummyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
