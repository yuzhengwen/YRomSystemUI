.class public Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "ThrowControllerImpl.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/policy/ThrowController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentState:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mCurrentState:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$1;-><init>(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mCurrentState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->throwSettingsChanged()V

    return-void
.end method

.method private throwSettingsChanged()V
    .locals 4

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->isThrowEnabled()Z

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;

    invoke-interface {v0, v2}, Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;->onThrowSettingsChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private throwSettingsChanged(Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->isThrowEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;->onThrowSettingsChanged(Z)V

    return-void
.end method


# virtual methods
.method public addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->throwSettingsChanged(Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;)V

    return-void
.end method

.method public isThrowEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mCurrentState:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public registerThrowBroadcast()V
    .locals 4

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sonymobile.playanywhere.DEVICE_CONNECTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setThrowEnabled(Z)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.playanywhere.DEVICE_SELECTOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v1, 0x1

    return v1
.end method

.method public unregisterThrowBroadcast()V
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
