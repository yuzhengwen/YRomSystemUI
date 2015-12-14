.class public Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;
.super Ljava/lang/Object;
.source "LockscreenWallpaperController.java"

# interfaces
.implements Lcom/sonymobile/systemui/lockscreen/wallpaper/LoadWallpaperInterface;
.implements Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenReloadWallpaperCallback;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockscreenStreamOpener:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;

.field private final mLockscreenWallpaperCache:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;

.field private final mLockscreenWallpaperChangedObserver:Landroid/database/ContentObserver;

.field private mLockscreenWallpaperListener:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController$1;-><init>(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperChangedObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperCache:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;

    iput-object p3, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenStreamOpener:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperCache:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;

    invoke-virtual {v0, p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->setLockscreenReloadWallpaperCallback(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenReloadWallpaperCallback;)V

    iput-object p4, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->handleUserSwitch()V

    return-void
.end method

.method private getCurrentUser()I
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    return v0
.end method

.method private informLockscreenWallpaperChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperListener:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperListener:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperListener;

    invoke-interface {v0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperListener;->onLockscreenWallpaperCacheUpdated()V

    :cond_0
    return-void
.end method

.method private triggerLockscreenWallpaperAsyncLoadingForUser(I)V
    .locals 6

    new-instance v0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;

    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenStreamOpener:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;

    sget-object v3, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperContract;->CONTENT_URI:Landroid/net/Uri;

    move v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;-><init>(Landroid/content/Context;Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;Landroid/net/Uri;ILcom/sonymobile/systemui/lockscreen/wallpaper/LoadWallpaperInterface;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public getLockscreenWallpaper()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperCache:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;

    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->getWallpaperForUserId(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public handleUserSwitch()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperChangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object v1, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperContract;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperChangedObserver:Landroid/database/ContentObserver;

    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->getCurrentUser()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperChangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public pruneMemory()V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperCache:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperCache:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->clearCache()V

    :cond_0
    return-void
.end method

.method public reloadWallpaperForUser(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->triggerLockscreenWallpaperAsyncLoadingForUser(I)V

    return-void
.end method

.method public removeUserFromCache(I)V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperCache:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;

    invoke-virtual {v0, p1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->removeUser(I)V

    return-void
.end method

.method public setLockscreenWallpaperListener(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperListener:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperListener;

    return-void
.end method

.method public triggerLockscreenWallpaperAsyncLoading()V
    .locals 1

    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->triggerLockscreenWallpaperAsyncLoadingForUser(I)V

    return-void
.end method

.method public wallpaperLoaded(Landroid/graphics/Bitmap;I)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperCache:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;

    invoke-virtual {v0, p2, p1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->addWallpaperForUserId(ILandroid/graphics/Bitmap;)V

    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->getCurrentUser()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->informLockscreenWallpaperChanged()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->mLockscreenWallpaperCache:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;

    invoke-virtual {v0, p2}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->removeUser(I)V

    goto :goto_0
.end method
