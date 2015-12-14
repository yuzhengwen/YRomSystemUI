.class public final Lcom/sonymobile/keyguard/googleanalytics/LockscreenGoogleAnalyticsHelper;
.super Ljava/lang/Object;
.source "LockscreenGoogleAnalyticsHelper.java"


# direct methods
.method private static getClockSelectionReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;
    .locals 1

    new-instance v0, Lcom/sonymobile/keyguard/googleanalytics/ClockSelectionGoogleAnalyticsReporter;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/googleanalytics/ClockSelectionGoogleAnalyticsReporter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static getLockscreenTypeReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;
    .locals 6

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;

    new-instance v3, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;

    const-string v1, "lock_settings"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;-><init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/ILockSettings;)V

    new-instance v4, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;

    invoke-direct {v4}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;-><init>()V

    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;Landroid/os/UserManager;)V

    return-object v0
.end method

.method public static getReporters(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/sonymobile/keyguard/googleanalytics/LockscreenGoogleAnalyticsHelper;->getLockscreenTypeReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/sonymobile/keyguard/googleanalytics/LockscreenGoogleAnalyticsHelper;->getClockSelectionReporter(Landroid/content/Context;)Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
