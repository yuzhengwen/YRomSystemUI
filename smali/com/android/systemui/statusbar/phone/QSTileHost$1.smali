.class Lcom/android/systemui/statusbar/phone/QSTileHost$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "QSTileHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/VolumeComponent;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/sonymobile/systemui/statusbar/policy/NFCController;Lcom/sonymobile/systemui/statusbar/policy/LTEController;Lcom/sonymobile/systemui/statusbar/policy/StaminaController;Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController;Lcom/sonymobile/systemui/statusbar/policy/TetheringController;Lcom/sonymobile/systemui/statusbar/policy/ThrowController;Lcom/sonymobile/systemui/statusbar/policy/VolteController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QSTileHost;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$1;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$1;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->recreateTiles()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$1;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/QSTile;->userSwitch(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$1;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    # getter for: Lcom/android/systemui/statusbar/phone/QSTileHost;->mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->access$000(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/statusbar/policy/SecurityController;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/policy/SecurityController;->onUserSwitched(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$1;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    # getter for: Lcom/android/systemui/statusbar/phone/QSTileHost;->mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->access$100(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->onUserSwitched(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$1;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    # getter for: Lcom/android/systemui/statusbar/phone/QSTileHost;->mObserver:Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->access$200(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;->register()V

    return-void
.end method
