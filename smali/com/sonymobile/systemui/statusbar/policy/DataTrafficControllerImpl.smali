.class public Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "DataTrafficControllerImpl.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:Z

.field private final mHandler:Landroid/os/Handler;

.field private mNumberOfPollTries:I

.field private final mPollRunnable:Ljava/lang/Runnable;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mCurrentState:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl$1;-><init>(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl$2;-><init>(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mPollRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->dataTrafficSettingsChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mCurrentState:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mCurrentState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)I
    .locals 1

    iget v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mNumberOfPollTries:I

    return v0
.end method

.method static synthetic access$208(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)I
    .locals 2

    iget v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mNumberOfPollTries:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mNumberOfPollTries:I

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mPollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dataTrafficSettingsChanged()V
    .locals 4

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->isDataTrafficEnabled()Z

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;

    invoke-interface {v0, v2}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;->onDataTrafficSettingsChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dataTrafficSettingsChanged(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->isDataTrafficEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;->onDataTrafficSettingsChanged(Z)V

    return-void
.end method


# virtual methods
.method public addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->dataTrafficSettingsChanged(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;)V

    return-void
.end method

.method public isAvailiable()Z
    .locals 3

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method public isDataTrafficEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public registerDataTrafficBroadcast()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sonyericsson.net.conn.MOBILE_DATA_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDataTrafficEnabled(Z)Z
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.intent.ACTION_DATA_TRAFFIC_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mPollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mNumberOfPollTries:I

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mPollRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x1

    return v1
.end method

.method public unregisterDataTrafficBroadcast()V
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
