.class public Lcom/sonymobile/keyguard/pin/RealPinAutoUnlockSettingsSecureWrapper;
.super Ljava/lang/Object;
.source "RealPinAutoUnlockSettingsSecureWrapper.java"

# interfaces
.implements Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoUnlockSettingsSecureWrapper;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public enableAutoUnlock()V
    .locals 4

    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoUnlockSettingsSecureWrapper;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "somc.lockscreen_type_is_pin_and_exactly_4_digits"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public isAutoUnlockEnabled()Z
    .locals 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoUnlockSettingsSecureWrapper;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "somc.lockscreen_type_is_pin_and_exactly_4_digits"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v3, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-class v3, Lcom/sonymobile/keyguard/pin/RealPinAutoUnlockSettingsSecureWrapper;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
