.class public Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;
.super Ljava/lang/Object;
.source "KeyguardPluginMetaDataLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getFactoryEntryFromResourceId(ILandroid/content/res/Resources;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    new-instance v0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;

    invoke-direct {v0, p2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->setFromResourceId(I)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntryBuilder;->build()Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    move-result-object v0

    return-object v0
.end method

.method private getSuppliedFactories(Landroid/content/res/TypedArray;Landroid/content/res/Resources;)Ljava/util/LinkedList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/TypedArray;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3, p2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->getFactoryEntryFromResourceId(ILandroid/content/res/Resources;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v1
.end method


# virtual methods
.method public getAllKeyguardFactories()Ljava/util/LinkedList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v6, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v6, "com.android.systemui"

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "com.sonymobile.keyguard.KEYGUARD_PLUGINS"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "com.android.systemui"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v2, v3}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->getSuppliedFactories(Landroid/content/res/TypedArray;Landroid/content/res/Resources;)Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v6

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    throw v6
.end method

.method public getAvailableKeyguardFactories()Ljava/util/LinkedList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->getAllKeyguardFactories()Ljava/util/LinkedList;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    if-eqz v2, :cond_0

    iget-boolean v4, v2, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->enabled:Z

    if-eqz v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getFactoryEntryFromClassName(Ljava/lang/String;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
    .locals 8

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->getAllKeyguardFactories()Ljava/util/LinkedList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    iget-object v5, v1, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->fullyQualifiedClassName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    move-object v4, v1

    :cond_1
    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    sget-object v5, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getFactoryEntryFromClassName - NameNotFoundException while searching for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
