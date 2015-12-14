.class public Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;
.super Ljava/lang/Object;
.source "AsyncThrottlingWallpaperCommandSender.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DEBUG_SIMULATE_SLOW_SEND_WALLPAPER_COMMAND_IN_UPPER_200PX:Z

.field private final MAX_COMMAND_AGE_IN_MS:J

.field private final mBgHandler:Landroid/os/Handler;

.field private final mClock:Lcom/sonymobile/keyguard/time/Clock;

.field private final mQueueSpaceLeft:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/WallpaperManager;Landroid/os/Handler;Lcom/sonymobile/keyguard/time/Clock;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->DEBUG_SIMULATE_SLOW_SEND_WALLPAPER_COMMAND_IN_UPPER_200PX:Z

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->MAX_COMMAND_AGE_IN_MS:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->mQueueSpaceLeft:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->mWallpaperManager:Landroid/app/WallpaperManager;

    iput-object p2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->mBgHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->mClock:Lcom/sonymobile/keyguard/time/Clock;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;)Lcom/sonymobile/keyguard/time/Clock;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->mClock:Lcom/sonymobile/keyguard/time/Clock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;JJLjava/lang/ref/WeakReference;Ljava/lang/String;II)V
    .locals 1

    invoke-direct/range {p0 .. p8}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->safelySendWallpaperCommand(JJLjava/lang/ref/WeakReference;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->queueSpaceLeftAdd(I)V

    return-void
.end method

.method private postSendWallpaperCommandRunnable(Landroid/view/View;Ljava/lang/String;II)V
    .locals 8

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->mClock:Lcom/sonymobile/keyguard/time/Clock;

    invoke-interface {v1}, Lcom/sonymobile/keyguard/time/Clock;->getTimeInMillis()J

    move-result-wide v2

    new-instance v0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;

    move-object v1, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender$1;-><init>(Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;JLjava/lang/ref/WeakReference;Ljava/lang/String;II)V

    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->queueSpaceLeftAdd(I)V

    :cond_0
    return-void
.end method

.method private queueSpaceLeftAdd(I)V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->mQueueSpaceLeft:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method

.method private safelySendWallpaperCommand(JJLjava/lang/ref/WeakReference;Ljava/lang/String;II)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    sub-long v4, p3, p1

    const-wide/16 v10, 0x1f4

    cmp-long v9, v4, v10

    if-lez v9, :cond_1

    const/4 v6, 0x1

    :goto_0
    if-nez v6, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    :goto_1
    if-eqz v8, :cond_0

    move-object/from16 v0, p6

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-direct {p0, v8, v0, v1, v2}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;II)V

    :cond_0
    return-void

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;II)V
    .locals 7

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public sendWallpaperCommand(Landroid/view/View;Ljava/lang/String;II)V
    .locals 2

    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->mQueueSpaceLeft:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->postSendWallpaperCommandRunnable(Landroid/view/View;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
