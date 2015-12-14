.class Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController$1;
.super Landroid/database/ContentObserver;
.source "LockscreenWallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->triggerLockscreenWallpaperAsyncLoading()V

    :cond_0
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController$1;->onChange(Z)V

    return-void
.end method
