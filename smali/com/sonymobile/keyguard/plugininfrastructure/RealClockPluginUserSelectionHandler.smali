.class public Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;
.super Ljava/lang/Object;
.source "RealClockPluginUserSelectionHandler.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;


# instance fields
.field private final mDefaultKeyguardFactoryProvider:Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;

.field private final mKeyguardPluginMetaDataLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

.field private final mKeyguardPluginSecureSettingsAbstraction:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;


# direct methods
.method public constructor <init>(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginMetaDataLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    iput-object p2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginSecureSettingsAbstraction:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;

    iput-object p3, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mDefaultKeyguardFactoryProvider:Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;

    return-void
.end method

.method private updateLastPresentableSelectionStore()V
    .locals 3

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginSecureSettingsAbstraction:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;

    invoke-interface {v2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;->getExplicitlySelectedKeyguardPlugin()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mDefaultKeyguardFactoryProvider:Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;

    invoke-interface {v2}, Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;->getDefaultKeyguardFactoryClassName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginMetaDataLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    invoke-virtual {v2, v1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->getFactoryEntryFromClassName(Ljava/lang/String;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->selectableByThemes:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginSecureSettingsAbstraction:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;

    invoke-interface {v2, v1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;->setFallbackKeyguardPlugin(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getPresentableUserSelection()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginSecureSettingsAbstraction:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;

    invoke-interface {v2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;->getExplicitlySelectedKeyguardPlugin()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginMetaDataLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    invoke-virtual {v2, v1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->getFactoryEntryFromClassName(Ljava/lang/String;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->enabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginSecureSettingsAbstraction:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;

    invoke-interface {v2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;->getFallbackKeyguardPlugin()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;->Fallback:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->updateUserSelection(Ljava/lang/String;Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;)V

    :cond_0
    return-object v1
.end method

.method public updateUserSelection(Ljava/lang/String;Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;)V
    .locals 1

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->updateLastPresentableSelectionStore()V

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginSecureSettingsAbstraction:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;

    invoke-interface {v0, p1, p2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;->setExplicitlySelectedKeyguardPlugin(Ljava/lang/String;Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;)V

    return-void
.end method
