.class public Lcom/android/systemui/statusbar/phone/QSTileHost;
.super Ljava/lang/Object;
.source "QSTileHost.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$Host;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field private final mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field protected mCallback:Lcom/android/systemui/qs/QSTile$Host$Callback;

.field private final mCast:Lcom/android/systemui/statusbar/policy/CastController;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field protected final mContext:Landroid/content/Context;

.field private final mDataTraffic:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;

.field private final mFlashlight:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private final mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mLTE:Lcom/sonymobile/systemui/statusbar/policy/LTEController;

.field private final mLocation:Lcom/android/systemui/statusbar/policy/LocationController;

.field private final mLooper:Landroid/os/Looper;

.field private final mNFC:Lcom/sonymobile/systemui/statusbar/policy/NFCController;

.field private final mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mObserver:Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;

.field private final mRotation:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private final mScreenMirroring:Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController;

.field private final mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mStamina:Lcom/sonymobile/systemui/statusbar/policy/StaminaController;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTethering:Lcom/sonymobile/systemui/statusbar/policy/TetheringController;

.field private final mThrow:Lcom/sonymobile/systemui/statusbar/policy/ThrowController;

.field protected mTiles:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private final mVolte:Lcom/sonymobile/systemui/statusbar/policy/VolteController;

.field private final mVolume:Lcom/android/systemui/volume/VolumeComponent;

.field private final mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "QSTileHost"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/VolumeComponent;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/sonymobile/systemui/statusbar/policy/NFCController;Lcom/sonymobile/systemui/statusbar/policy/LTEController;Lcom/sonymobile/systemui/statusbar/policy/StaminaController;Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController;Lcom/sonymobile/systemui/statusbar/policy/TetheringController;Lcom/sonymobile/systemui/statusbar/policy/ThrowController;Lcom/sonymobile/systemui/statusbar/policy/VolteController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    new-instance v2, Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;-><init>(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mObserver:Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLocation:Lcom/android/systemui/statusbar/policy/LocationController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mRotation:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mVolume:Lcom/android/systemui/volume/VolumeComponent;

    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    iput-object p11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mFlashlight:Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNFC:Lcom/sonymobile/systemui/statusbar/policy/NFCController;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLTE:Lcom/sonymobile/systemui/statusbar/policy/LTEController;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStamina:Lcom/sonymobile/systemui/statusbar/policy/StaminaController;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mDataTraffic:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mScreenMirroring:Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTethering:Lcom/sonymobile/systemui/statusbar/policy/TetheringController;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mThrow:Lcom/sonymobile/systemui/statusbar/policy/ThrowController;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mVolte:Lcom/sonymobile/systemui/statusbar/policy/VolteController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Landroid/os/HandlerThread;

    const-class v2, Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLooper:Landroid/os/Looper;

    new-instance v2, Lcom/android/systemui/statusbar/phone/QSTileHost$1;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/QSTileHost$1;-><init>(Lcom/android/systemui/statusbar/phone/QSTileHost;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->recreateTiles()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v2}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mObserver:Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;->register()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/statusbar/policy/SecurityController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/statusbar/policy/NetworkController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mObserver:Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/settings/CurrentUserTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-object v0
.end method


# virtual methods
.method public collapsePanels()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postAnimateCollapsePanels()V

    return-void
.end method

.method protected createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;"
        }
    .end annotation

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "bt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto :goto_0

    :cond_1
    const-string v0, "inversion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/systemui/qs/tiles/ColorInversionTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/ColorInversionTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto :goto_0

    :cond_2
    const-string v0, "cell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/CellularTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto :goto_0

    :cond_3
    const-string v0, "airplane"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto :goto_0

    :cond_4
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto :goto_0

    :cond_5
    const-string v0, "flashlight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto :goto_0

    :cond_6
    const-string v0, "location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/LocationTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto :goto_0

    :cond_7
    const-string v0, "cast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/android/systemui/qs/tiles/CastTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/CastTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto :goto_0

    :cond_8
    const-string v0, "hotspot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/HotspotTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto :goto_0

    :cond_9
    const-string v0, "notifications"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/android/systemui/qs/tiles/NotificationsTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/NotificationsTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/android/systemui/qs/tiles/DataTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DataTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "dds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v0, v1, :cond_c

    new-instance v0, Lcom/android/systemui/qs/tiles/DdsTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DdsTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "apn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/ApnTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "intent("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/IntentTile;->create(Lcom/android/systemui/qs/QSTile$Host;Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tile spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBluetoothController()Lcom/android/systemui/statusbar/policy/BluetoothController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    return-object v0
.end method

.method public getCastController()Lcom/android/systemui/statusbar/policy/CastController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDataTrafficController()Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mDataTraffic:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;

    return-object v0
.end method

.method public getFlashlightController()Lcom/android/systemui/statusbar/policy/FlashlightController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mFlashlight:Lcom/android/systemui/statusbar/policy/FlashlightController;

    return-object v0
.end method

.method public getHotspotController()Lcom/android/systemui/statusbar/policy/HotspotController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    return-object v0
.end method

.method public getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object v0
.end method

.method public getLTEController()Lcom/sonymobile/systemui/statusbar/policy/LTEController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLTE:Lcom/sonymobile/systemui/statusbar/policy/LTEController;

    return-object v0
.end method

.method public getLocationController()Lcom/android/systemui/statusbar/policy/LocationController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLocation:Lcom/android/systemui/statusbar/policy/LocationController;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public getNFCController()Lcom/sonymobile/systemui/statusbar/policy/NFCController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNFC:Lcom/sonymobile/systemui/statusbar/policy/NFCController;

    return-object v0
.end method

.method public getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

    return-object v0
.end method

.method public getRotationLockController()Lcom/android/systemui/statusbar/policy/RotationLockController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mRotation:Lcom/android/systemui/statusbar/policy/RotationLockController;

    return-object v0
.end method

.method public getScreenMirroringController()Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mScreenMirroring:Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController;

    return-object v0
.end method

.method public getSecurityController()Lcom/android/systemui/statusbar/policy/SecurityController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

    return-object v0
.end method

.method public getStaminaController()Lcom/sonymobile/systemui/statusbar/policy/StaminaController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStamina:Lcom/sonymobile/systemui/statusbar/policy/StaminaController;

    return-object v0
.end method

.method public getTetheringController()Lcom/sonymobile/systemui/statusbar/policy/TetheringController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTethering:Lcom/sonymobile/systemui/statusbar/policy/TetheringController;

    return-object v0
.end method

.method public getThrowController()Lcom/sonymobile/systemui/statusbar/policy/ThrowController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mThrow:Lcom/sonymobile/systemui/statusbar/policy/ThrowController;

    return-object v0
.end method

.method public getTiles()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getUserSwitcherController()Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    return-object v0
.end method

.method public getVolteController()Lcom/sonymobile/systemui/statusbar/policy/VolteController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mVolte:Lcom/sonymobile/systemui/statusbar/policy/VolteController;

    return-object v0
.end method

.method public getVolumeComponent()Lcom/android/systemui/volume/VolumeComponent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mVolume:Lcom/android/systemui/volume/VolumeComponent;

    return-object v0
.end method

.method public getZenModeController()Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method protected loadTileSpecs()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f0d000a

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f0d0001

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v10, 0x7f0b003e

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    add-int/lit8 v5, v10, 0x2

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "sysui_qs_tiles"

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v12}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    const v10, 0x7f0d0002

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-boolean v10, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "QSTileHost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Loaded tile specs from config: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v7, v1, v3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v5, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "QSTileHost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Loaded tile specs from setting: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v10, "default"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-nez v0, :cond_1

    const-string v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object v9
.end method

.method protected recreateTiles()V
    .locals 9

    sget-boolean v6, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "QSTileHost"

    const-string v7, "Recreating tiles"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->loadTileSpecs()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-boolean v6, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v7, "QSTileHost"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Destroying tile: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v6}, Lcom/android/systemui/qs/QSTile;->destroy()V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    sget-boolean v6, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "QSTileHost"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Creating tile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v6, "QSTileHost"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error creating tile for spec: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v1}, Ljava/util/LinkedHashMap;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    :goto_2
    return-void

    :cond_8
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallback:Lcom/android/systemui/qs/QSTile$Host$Callback;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallback:Lcom/android/systemui/qs/QSTile$Host$Callback;

    invoke-interface {v6}, Lcom/android/systemui/qs/QSTile$Host$Callback;->onTilesChanged()V

    goto :goto_2
.end method

.method public setCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallback:Lcom/android/systemui/qs/QSTile$Host$Callback;

    return-void
.end method

.method public startSettingsActivity(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postStartSettingsActivity(Landroid/content/Intent;I)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
