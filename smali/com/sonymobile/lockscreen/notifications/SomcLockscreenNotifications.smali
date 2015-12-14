.class public Lcom/sonymobile/lockscreen/notifications/SomcLockscreenNotifications;
.super Ljava/lang/Object;
.source "SomcLockscreenNotifications.java"


# direct methods
.method public static shouldFilterOutOldNotifications(Landroid/content/Context;Z)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$bool;->config_keepLockscreenNotifications:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "somc.lockscreen.keep_notifications"

    const/4 v6, -0x2

    invoke-static {v4, v5, v0, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1
.end method
