.class public Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;
.super Ljava/lang/Object;
.source "RealWallpaperTouchForwarder.java"

# interfaces
.implements Lcom/sonymobile/systemui/lockscreen/wallpaper/OnLiveWallpaperCheckCompleted;
.implements Lcom/sonymobile/systemui/lockscreen/wallpaper/WallpaperTouchForwarder;


# instance fields
.field private final mAsyncThrottlingWallpaperCommandSender:Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;

.field private final mLockscreenBackgroundDrawChecker:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenBackgroundDrawChecker;

.field private final mPreAllocatedRam:[I

.field private final mStoredMotionEventData:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;

.field private mUsingPS4Wallpaper:Z

.field private final mWallpaperManagerProxy:Lcom/sonymobile/systemui/lockscreen/wallpaper/WallpaperManagerProxy;


# direct methods
.method public constructor <init>(Lcom/sonymobile/systemui/lockscreen/wallpaper/WallpaperManagerProxy;Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenBackgroundDrawChecker;Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenLiveWallpaperChecker;Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mPreAllocatedRam:[I

    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mWallpaperManagerProxy:Lcom/sonymobile/systemui/lockscreen/wallpaper/WallpaperManagerProxy;

    iput-object p2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mAsyncThrottlingWallpaperCommandSender:Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;

    iput-object p3, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mLockscreenBackgroundDrawChecker:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenBackgroundDrawChecker;

    iput-object p5, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mStoredMotionEventData:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;

    invoke-virtual {p0, p4}, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->refreshSystemWallpaperInfo(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenLiveWallpaperChecker;)V

    return-void
.end method

.method private shouldForwardWallpaperEvents()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mUsingPS4Wallpaper:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mLockscreenBackgroundDrawChecker:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenBackgroundDrawChecker;

    invoke-interface {v0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenBackgroundDrawChecker;->isLockscreenBackgroundDrawn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ensureEndCommandIsSent()V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mStoredMotionEventData:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;

    invoke-virtual {v2}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;->getStoredMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mStoredMotionEventData:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;

    invoke-virtual {v2}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;->getStoredView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->handleWallpaperTap(Landroid/view/MotionEvent;Landroid/view/View;)Z

    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public getWallpaperManagerProxy()Lcom/sonymobile/systemui/lockscreen/wallpaper/WallpaperManagerProxy;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mWallpaperManagerProxy:Lcom/sonymobile/systemui/lockscreen/wallpaper/WallpaperManagerProxy;

    return-object v0
.end method

.method public handleWallpaperTap(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->shouldForwardWallpaperEvents()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_0
    move v1, v4

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mPreAllocatedRam:[I

    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    aget v5, v3, v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    aput v5, v3, v4

    aget v5, v3, v7

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    aput v5, v3, v7

    iget-object v5, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mAsyncThrottlingWallpaperCommandSender:Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;

    aget v4, v3, v4

    aget v6, v3, v7

    invoke-virtual {v5, p2, v0, v4, v6}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncThrottlingWallpaperCommandSender;->sendWallpaperCommand(Landroid/view/View;Ljava/lang/String;II)V

    iget-object v4, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mStoredMotionEventData:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;

    invoke-virtual {v4, p1, p2}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperStoredMotionEventData;->updateWithMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    goto :goto_0

    :pswitch_0
    const-string v0, "com.sonymobile.lockscreen.wallpaper.command.POINTER_DOWN"

    goto :goto_1

    :pswitch_1
    const-string v0, "com.sonymobile.lockscreen.wallpaper.command.POINTER_UP"

    goto :goto_1

    :pswitch_2
    const-string v0, "com.sonymobile.lockscreen.wallpaper.command.POINTER_MOVE"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCheckLiveWallpaperCheckCompleted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/RealWallpaperTouchForwarder;->mUsingPS4Wallpaper:Z

    return-void
.end method

.method public refreshSystemWallpaperInfo(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenLiveWallpaperChecker;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenLiveWallpaperChecker;->setOnTaskCompleteListener(Lcom/sonymobile/systemui/lockscreen/wallpaper/OnLiveWallpaperCheckCompleted;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenLiveWallpaperChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
