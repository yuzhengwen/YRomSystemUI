.class public Lcom/sonymobile/keyguard/googleanalytics/ClockSelectionGoogleAnalyticsReporter;
.super Ljava/lang/Object;
.source "ClockSelectionGoogleAnalyticsReporter.java"

# interfaces
.implements Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/keyguard/googleanalytics/ClockSelectionGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getActiveClockFactoryClassName()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/ClockSelectionGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "somc.lockscreen.active.clock_factory"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "DEFAULT"

    :cond_0
    return-object v0
.end method

.method private getDefaultClockFactoryClassName()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/sonymobile/keyguard/plugininfrastructure/RealDefaultKeyguardFactoryProvider;

    new-instance v1, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    iget-object v2, p0, Lcom/sonymobile/keyguard/googleanalytics/ClockSelectionGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/sonymobile/keyguard/plugininfrastructure/RealCustomizationResourceLoader;

    iget-object v3, p0, Lcom/sonymobile/keyguard/googleanalytics/ClockSelectionGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sonymobile/keyguard/plugininfrastructure/RealCustomizationResourceLoader;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/keyguard/plugininfrastructure/RealDefaultKeyguardFactoryProvider;-><init>(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;Lcom/sonymobile/keyguard/plugininfrastructure/CustomizationResourceLoader;)V

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/RealDefaultKeyguardFactoryProvider;->getDefaultKeyguardFactoryClassName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSourceOfActiveClockSetter()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/ClockSelectionGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "somc.lockscreen.active.clock_factory.source"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;->DEFAULT:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    invoke-virtual {v1}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;->name()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public reportDataToGoogle()V
    .locals 10

    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/ClockSelectionGoogleAnalyticsReporter;->getSourceOfActiveClockSetter()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/ClockSelectionGoogleAnalyticsReporter;->getDefaultClockFactoryClassName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/ClockSelectionGoogleAnalyticsReporter;->getActiveClockFactoryClassName()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SOURCE:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "DEFAULT:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/ClockSelectionGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    const-string v2, "UA-47011422-17"

    const-string v3, "LockscreenClock"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v7}, Lcom/sonymobile/ga/GAManager;->pushEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
