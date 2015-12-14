.class public Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;
.super Ljava/lang/Object;
.source "GoogleAnalyticsLockscreenClassifier.java"


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockSettings:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/ILockSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;->mLockSettings:Lcom/android/internal/widget/ILockSettings;

    return-void
.end method

.method private getHumanReadableLockscreenNameForQuality(I)Ljava/lang/String;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    sget-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->None:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->Pattern:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->PIN:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->Password:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->None:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->Swipe:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    sget-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->SwipeDefault:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_4
        0x0 -> :sswitch_3
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private getLockSettingsLong(Ljava/lang/String;JI)J
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;->mLockSettings:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    :goto_0
    return-wide p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getHumanReadableLockscreenNameForUser(I)Ljava/lang/String;
    .locals 4

    const-string v1, "lockscreen.password_type"

    const-wide/16 v2, -0x1

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;->getLockSettingsLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v0, v2

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->UnexpectedBiometricWeak:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;

    invoke-virtual {v1}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenType$Types;->name()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;->getHumanReadableLockscreenNameForQuality(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
