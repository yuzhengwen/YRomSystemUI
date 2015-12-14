.class public Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginChangedObserver;
.super Landroid/database/ContentObserver;
.source "KeyguardPluginChangedObserver.java"


# instance fields
.field private final mWeakKeyguardUpdateMonitor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginChangedObserver;->mWeakKeyguardUpdateMonitor:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginChangedObserver;->mWeakKeyguardUpdateMonitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onUserClockChanged()V

    :cond_0
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginChangedObserver;->onChange(Z)V

    return-void
.end method

.method public registerForUser(Landroid/content/Context;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;

    invoke-direct {v1, v0, p2}, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;-><init>(Landroid/content/ContentResolver;I)V

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-interface {v1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;->getExplicitlySelectedKeyguardPluginValueUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p0, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    return-void
.end method
