.class public Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;
.super Ljava/lang/Object;
.source "LTEControllerImpl.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/policy/LTEController;


# static fields
.field private static final DBG:Z


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mEnabled:Z

.field private mLte:I

.field private mNonLte:I

.field private mSettingsChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "LTEControllerImpl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mCurrentState:I

    iput-boolean v3, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mEnabled:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v4}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl$1;-><init>(Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mContentObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "preferred_network_mode"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->getPreferredNetworkMode()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mCurrentState:I

    iget v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mCurrentState:I

    const/4 v4, 0x7

    if-le v1, v4, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mEnabled:Z

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->getPreferredNetworks(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->getNetwork(Ljava/lang/String;Z)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mLte:I

    invoke-direct {p0, v0, v3}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->getNetwork(Ljava/lang/String;Z)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mNonLte:I

    return-void

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;)I
    .locals 1

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->getPreferredNetworkMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;)I
    .locals 1

    iget v0, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mCurrentState:I

    return v0
.end method

.method static synthetic access$102(Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mCurrentState:I

    return p1
.end method

.method static synthetic access$202(Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mNonLte:I

    return p1
.end method

.method static synthetic access$302(Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mEnabled:Z

    return p1
.end method

.method static synthetic access$402(Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mLte:I

    return p1
.end method

.method static synthetic access$500(Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->lteSettingsChanged()V

    return-void
.end method

.method private getNetwork(Ljava/lang/String;Z)I
    .locals 5

    const/4 v4, 0x7

    new-instance v2, Ljava/util/ArrayList;

    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_3

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz p2, :cond_1

    if-le v1, v4, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    if-nez p2, :cond_2

    if-le v1, v4, :cond_0

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mCurrentState:I

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method private getPreferredNetworkMode()I
    .locals 4

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-boolean v1, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "LTEControllerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LTEService getState status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private static getPreferredNetworks(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const-string v3, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v6, "com.android.phone"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "preferred_network_mode_marshal"

    const-string v7, "string"

    const-string v8, "com.android.phone"

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    sget-boolean v6, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "LTEControllerImpl"

    const-string v7, "No preferred network found"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isLteNetworkAvailable(Landroid/content/Context;)Z
    .locals 5

    invoke-static {p0}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->getPreferredNetworks(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/util/ArrayList;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_1

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v4, 0x7

    if-le v1, v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :catch_0
    move-exception v4

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private lteSettingsChanged()V
    .locals 4

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->isLTEEnabled()Z

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;

    invoke-interface {v0, v2}, Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;->onLTESettingsChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private lteSettingsChanged(Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->isLTEEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;->onLTESettingsChanged(Z)V

    return-void
.end method


# virtual methods
.method public addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->lteSettingsChanged(Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;)V

    return-void
.end method

.method public isLTEEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mEnabled:Z

    return v0
.end method

.method public removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLTEEnabled(Z)Z
    .locals 5

    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mLte:I

    :goto_0
    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(I)Z

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->lteSettingsChanged()V

    :cond_0
    :goto_1
    const/4 v3, 0x1

    return v3

    :cond_1
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mNonLte:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v3, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "LTEControllerImpl"

    const-string v4, "setPreferredNetworkType call failed"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
