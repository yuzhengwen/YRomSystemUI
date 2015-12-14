.class Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
.super Ljava/lang/Object;
.source "GoogleAnalyticsProxyEventData.java"


# instance fields
.field final mAction:Ljava/lang/String;

.field final mCategory:Ljava/lang/String;

.field final mLabel:Ljava/lang/String;

.field final mValue:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mCategory:Ljava/lang/String;

    iput-object p2, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mAction:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mLabel:Ljava/lang/String;

    iput-wide p4, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mValue:J

    return-void
.end method
