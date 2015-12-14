.class public Lcom/sonymobile/systemui/lockscreen/wallpaper/WallpaperManagerProxy;
.super Ljava/lang/Object;
.source "WallpaperManagerProxy.java"


# instance fields
.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/app/WallpaperManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/WallpaperManagerProxy;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-void
.end method


# virtual methods
.method public getPackageNameForUser(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/WallpaperManagerProxy;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2, p1}, Landroid/app/WallpaperManager;->getWallpaperInfoForUser(I)Landroid/app/WallpaperInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
