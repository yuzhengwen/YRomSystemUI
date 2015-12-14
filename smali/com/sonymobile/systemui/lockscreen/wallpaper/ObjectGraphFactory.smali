.class public abstract Lcom/sonymobile/systemui/lockscreen/wallpaper/ObjectGraphFactory;
.super Ljava/lang/Object;
.source "ObjectGraphFactory.java"


# static fields
.field private static sLockscreenWallpaperController:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;


# direct methods
.method public static getSharedLockscreenWallpaperController()Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;
    .locals 1

    sget-object v0, Lcom/sonymobile/systemui/lockscreen/wallpaper/ObjectGraphFactory;->sLockscreenWallpaperController:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;

    return-object v0
.end method

.method public static newLockscreenWallpaperController(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;)Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;
    .locals 1

    new-instance v0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;-><init>(Landroid/content/Context;Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;Lcom/android/internal/widget/LockPatternUtils;)V

    invoke-static {v0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/ObjectGraphFactory;->setSharedLockscreenWallpaperController(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;)V

    return-object v0
.end method

.method public static setSharedLockscreenWallpaperController(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;)V
    .locals 0

    sput-object p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/ObjectGraphFactory;->sLockscreenWallpaperController:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;

    return-void
.end method
