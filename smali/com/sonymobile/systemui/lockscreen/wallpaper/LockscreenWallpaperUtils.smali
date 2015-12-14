.class public final Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperUtils;
.super Ljava/lang/Object;
.source "LockscreenWallpaperUtils.java"


# direct methods
.method public static getUserSpecificContext(Landroid/content/Context;I)Landroid/content/Context;
    .locals 4

    move-object v0, p0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-eq v1, p1, :cond_0

    if-lez p1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
