.class public Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;
.super Ljava/lang/Object;
.source "GoogleAnalyticsReportTimeChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final INTERNAL_REPORT_INTERVAL_MS:J

.field public static final REPORT_INTERVAL_MS:J


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentTimeClock:Lcom/sonymobile/keyguard/time/Clock;

.field private final mGoogleAnalyticsPreferences:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPreferences;

.field private final mGoogleAnalyticsReporters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->REPORT_INTERVAL_MS:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->INTERNAL_REPORT_INTERVAL_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/keyguard/time/Clock;Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPreferences;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonymobile/keyguard/time/Clock;",
            "Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPreferences;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mCurrentTimeClock:Lcom/sonymobile/keyguard/time/Clock;

    iput-object p3, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mGoogleAnalyticsPreferences:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPreferences;

    iput-object p4, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mGoogleAnalyticsReporters:Ljava/util/List;

    return-void
.end method

.method private checkTime()Z
    .locals 14

    const-wide/16 v8, -0x1

    iget-object v5, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mGoogleAnalyticsPreferences:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPreferences;

    iget-object v6, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v8, v9}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPreferences;->getNextReportTime(Landroid/content/Context;J)J

    move-result-wide v2

    iget-object v5, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mCurrentTimeClock:Lcom/sonymobile/keyguard/time/Clock;

    invoke-interface {v5}, Lcom/sonymobile/keyguard/time/Clock;->getTimeInMillis()J

    move-result-wide v0

    const/4 v4, 0x0

    cmp-long v5, v2, v8

    if-eqz v5, :cond_0

    long-to-double v6, v2

    long-to-double v8, v0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->getReportTimeInterval()J

    move-result-wide v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    cmpl-double v5, v6, v8

    if-lez v5, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->setNextReportTime()V

    :cond_1
    :goto_0
    return v4

    :cond_2
    cmp-long v5, v2, v0

    if-gez v5, :cond_3

    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->setNextReportTime()V

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getReportTimeInterval()J
    .locals 2

    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->isEngOrUserdebugVariant()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->INTERNAL_REPORT_INTERVAL_MS:J

    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->REPORT_INTERVAL_MS:J

    goto :goto_0
.end method

.method private isEngOrUserdebugVariant()Z
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private report()V
    .locals 3

    iget-object v2, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mGoogleAnalyticsReporters:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mGoogleAnalyticsReporters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;->reportDataToGoogle()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setNextReportTime()V
    .locals 6

    iget-object v2, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mCurrentTimeClock:Lcom/sonymobile/keyguard/time/Clock;

    invoke-interface {v2}, Lcom/sonymobile/keyguard/time/Clock;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->getReportTimeInterval()J

    move-result-wide v4

    add-long v0, v2, v4

    iget-object v2, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mGoogleAnalyticsPreferences:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPreferences;

    iget-object v3, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPreferences;->setNextReportTime(Landroid/content/Context;J)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "somc.google_analytics_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_1

    :goto_0
    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->checkTime()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->report()V

    goto :goto_1
.end method
