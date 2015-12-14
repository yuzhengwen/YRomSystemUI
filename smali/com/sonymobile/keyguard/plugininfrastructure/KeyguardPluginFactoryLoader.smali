.class public Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;
.super Ljava/lang/Object;
.source "KeyguardPluginFactoryLoader.java"


# instance fields
.field private final mClockPluginUserSelectionHandler:Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;

.field private final mContext:Landroid/content/Context;

.field private mKeyguardComponentFactory:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

.field private final mKeyguardFactoryProvider:Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;

.field private mLastComponentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DefaultKeyguardFactoryProvider can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ClockPluginUserSelectionHandler can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mKeyguardFactoryProvider:Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;

    iput-object p3, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mClockPluginUserSelectionHandler:Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;

    return-void
.end method

.method private getActiveFullPluginClassName()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$bool;->somc_keyguard_use_default_clock:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "com.sonymobile.keyguard.plugin.digitalclock.DigitalClockKeyguardComponentFactory"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mClockPluginUserSelectionHandler:Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;

    invoke-interface {v1}, Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;->getPresentableUserSelection()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mKeyguardFactoryProvider:Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;

    invoke-interface {v1}, Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;->getDefaultKeyguardFactoryClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getActiveKeyguardComponentFactoryComponentName()Landroid/content/ComponentName;
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->getActiveFullPluginClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method private instantiateKeyguardComponentFactory()Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
    .locals 3

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->getActiveKeyguardComponentFactoryComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mLastComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->instantiateKeyguardComponentFactory(Landroid/content/ComponentName;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    move-result-object v1

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mLastComponentName:Landroid/content/ComponentName;

    return-object v1

    :cond_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mKeyguardComponentFactory:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    goto :goto_0
.end method

.method private instantiateKeyguardComponentFactory(Landroid/content/ComponentName;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
    .locals 6

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->loadKeyguardComponentFactoryClassFromComponentName(Landroid/content/ComponentName;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    :cond_0
    :goto_0
    return-object v4

    :catch_0
    move-exception v1

    :goto_1
    const-string v5, "KeyguardPluginFactoryLoader"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method private loadKeyguardComponentFactoryClassFromComponentName(Landroid/content/ComponentName;)Ljava/lang/Class;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/lang/Class",
            "<",
            "Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    iget-object v6, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :try_start_0
    const-class v6, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, v1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->loadUncheckedClass(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/Class;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v6, "KeyguardPluginFactoryLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keyguard plugin factory class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " could not be found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v4

    const-string v6, "KeyguardPluginFactoryLoader"

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v5

    const-string v6, "KeyguardPluginFactoryLoader"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadUncheckedClass(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    invoke-virtual {p3, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createComponentFactoryFromFactoryEntry(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->fullyQualifiedClassName:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->fullyQualifiedClassName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->instantiateKeyguardComponentFactory(Landroid/content/ComponentName;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public createKeyguardClockView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mKeyguardComponentFactory:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mKeyguardComponentFactory:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;->createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "KeyguardPluginFactoryLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clock plugin should not assume where it shall end up. view = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public refreshLoader()Z
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mKeyguardComponentFactory:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->instantiateKeyguardComponentFactory()Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mKeyguardComponentFactory:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginFactoryLoader;->mKeyguardComponentFactory:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
