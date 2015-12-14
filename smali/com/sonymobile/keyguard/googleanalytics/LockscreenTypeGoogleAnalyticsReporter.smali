.class public Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;
.super Landroid/os/AsyncTask;
.source "LockscreenTypeGoogleAnalyticsReporter.java"

# interfaces
.implements Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGoogleAnalyticsLockscreenClassifier:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;

.field private final mGoogleAnalyticsUserClassifier:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;Landroid/os/UserManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p3, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mGoogleAnalyticsLockscreenClassifier:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;

    iput-object p4, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mGoogleAnalyticsUserClassifier:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;

    iput-object p5, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method private getSelectedLockScreenTypeForAllUsers(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;",
            ">;"
        }
    .end annotation

    iget-object v5, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mUserManager:Landroid/os/UserManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v3}, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->getSelectedLockscreenForUser(Landroid/content/pm/UserInfo;)Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getSelectedLockscreenForUser(Landroid/content/pm/UserInfo;)Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mGoogleAnalyticsLockscreenClassifier:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;

    iget v6, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v6}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;->getHumanReadableLockscreenNameForUser(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    iget v6, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v6, :cond_1

    const-wide/16 v4, 0x1

    :goto_1
    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mGoogleAnalyticsUserClassifier:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;

    invoke-virtual {v1, p1}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;->getUserType(Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;

    const-string v1, "LockscreenType"

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_1
.end method

.method private reportLockscreens()V
    .locals 10

    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->getSelectedLockScreenTypeForAllUsers(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;

    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    const-string v2, "UA-47011422-17"

    iget-object v3, v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mCategory:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mAction:Ljava/lang/String;

    iget-object v5, v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mLabel:Ljava/lang/String;

    iget-wide v6, v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mValue:J

    invoke-static/range {v1 .. v7}, Lcom/sonymobile/ga/GAManager;->pushEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->reportLockscreens()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public reportDataToGoogle()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
