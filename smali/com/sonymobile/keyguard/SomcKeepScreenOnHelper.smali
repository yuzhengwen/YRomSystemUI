.class public Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;
.super Ljava/lang/Object;
.source "SomcKeepScreenOnHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper$KeepScreenOnHandler;
    }
.end annotation


# instance fields
.field private final mKeepScreenOnInLockscreenHandler:Landroid/os/Handler;

.field private final mUserActivityPoker:Lcom/sonymobile/keyguard/SomcUserActivityPoker;


# direct methods
.method public constructor <init>(Lcom/sonymobile/keyguard/SomcUserActivityPoker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;->mUserActivityPoker:Lcom/sonymobile/keyguard/SomcUserActivityPoker;

    new-instance v0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper$KeepScreenOnHandler;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper$KeepScreenOnHandler;-><init>(Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;->mKeepScreenOnInLockscreenHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;->handleKeepScreenOnMessage(Landroid/os/Message;)V

    return-void
.end method

.method private handleKeepScreenOnMessage(Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;->mUserActivityPoker:Lcom/sonymobile/keyguard/SomcUserActivityPoker;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/SomcUserActivityPoker;->poke()V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkIfMotionEventShouldKeepScreenOn(Landroid/view/MotionEvent;)V
    .locals 5

    const/16 v4, 0x3e9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;->mKeepScreenOnInLockscreenHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;->mKeepScreenOnInLockscreenHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;->mKeepScreenOnInLockscreenHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
