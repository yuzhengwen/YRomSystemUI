.class public Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;
.super Ljava/lang/Object;
.source "RealKeyguardPluginSecureSettingsAbstraction.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ContentResolver may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mContentResolver:Landroid/content/ContentResolver;

    iput p2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mUserId:I

    return-void
.end method


# virtual methods
.method public getExplicitlySelectedKeyguardPlugin()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "somc.lockscreen.active.clock_factory"

    iget v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExplicitlySelectedKeyguardPluginValueUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "somc.lockscreen.active.clock_factory"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getFallbackKeyguardPlugin()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "somc.lockscreen.active.clock_factory_fallback"

    iget v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setExplicitlySelectedKeyguardPlugin(Ljava/lang/String;Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;)V
    .locals 4

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "somc.lockscreen.active.clock_factory.source"

    invoke-virtual {p2}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;->name()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "somc.lockscreen.active.clock_factory"

    iget v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public setFallbackKeyguardPlugin(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "somc.lockscreen.active.clock_factory_fallback"

    iget v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method
