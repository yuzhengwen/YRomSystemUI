.class Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;
.super Ljava/lang/Object;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SomcVolumeBehavior"
.end annotation


# instance fields
.field private mInitialRingVolumeIndex:I

.field private mIsZenAtNextKey:Z

.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->mInitialRingVolumeIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->postVolumeDownReleased()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->postVolumeUpReleased()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->startExpandedVolumeSliders()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->toggleZenMode(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->mInitialRingVolumeIndex:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;IILandroid/media/session/MediaController;Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->onShowVolumeChanged(IILandroid/media/session/MediaController;Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->onVolumeDownPressed()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->onVolumeDownReleased()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->onVolumeUpPressed()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->onVolumeUpReleased()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->postVolumeDownPressed()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->isZen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->postVolumeUpPressed()V

    return-void
.end method

.method private isZen()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1200(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v0

    # invokes: Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$4700(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # invokes: Lcom/android/systemui/volume/VolumePanel;->isShowing()Z
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$4900(Lcom/android/systemui/volume/VolumePanel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$4200(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$4200(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onShowVolumeChanged(IILandroid/media/session/MediaController;Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # invokes: Lcom/android/systemui/volume/VolumePanel;->isShowing()Z
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$4900(Lcom/android/systemui/volume/VolumePanel;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$4200(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$4200(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v0

    if-nez v0, :cond_1

    iput p5, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->mInitialRingVolumeIndex:I

    :cond_1
    return-void
.end method

.method private onVolumeDownPressed()V
    .locals 7

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mLastRingerMode:I
    invoke-static {v6}, Lcom/android/systemui/volume/VolumePanel;->access$4600(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v6

    if-ne v6, v4, :cond_3

    move v1, v4

    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->mIsZenAtNextKey:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I
    invoke-static {v6}, Lcom/android/systemui/volume/VolumePanel;->access$1200(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v6

    # invokes: Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z
    invoke-static {v6}, Lcom/android/systemui/volume/VolumePanel;->access$4700(I)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    invoke-static {v6}, Lcom/android/systemui/volume/VolumePanel;->access$4200(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    invoke-static {v6}, Lcom/android/systemui/volume/VolumePanel;->access$4200(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mExpandedVolumeSlidersShowing:Z
    invoke-static {v6}, Lcom/android/systemui/volume/VolumePanel;->access$1800(Lcom/android/systemui/volume/VolumePanel;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v2, 0x2

    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;
    invoke-static {v6}, Lcom/android/systemui/volume/VolumePanel;->access$2100(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/ZenModePanel;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;
    invoke-static {v6}, Lcom/android/systemui/volume/VolumePanel;->access$2100(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/ZenModePanel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/volume/ZenModePanel;->isExceptionSwitchChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v4

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumePanel;->access$4800(Lcom/android/systemui/volume/VolumePanel;)Landroid/util/SparseArray;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I
    invoke-static {v6}, Lcom/android/systemui/volume/VolumePanel;->access$1200(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    const/4 v0, 0x1

    if-ne v2, v5, :cond_1

    const/16 v0, 0x11

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget v5, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->mInitialRingVolumeIndex:I

    # invokes: Lcom/android/systemui/volume/VolumePanel;->setStreamVolume(Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V
    invoke-static {v4, v3, v5, v0}, Lcom/android/systemui/volume/VolumePanel;->access$4000(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V

    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumePanel;->access$4200(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(I)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    move v2, v5

    goto :goto_1
.end method

.method private onVolumeDownReleased()V
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mLastRingerMode:I
    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->access$4600(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # invokes: Lcom/android/systemui/volume/VolumePanel;->isShowing()Z
    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->access$4900(Lcom/android/systemui/volume/VolumePanel;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I
    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->access$1200(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v2

    # invokes: Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z
    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->access$4700(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->access$4200(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->access$4200(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v2

    if-nez v2, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->mIsZenAtNextKey:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onVolumeUpPressed()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # invokes: Lcom/android/systemui/volume/VolumePanel;->isShowing()Z
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$4900(Lcom/android/systemui/volume/VolumePanel;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$1200(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v1

    # invokes: Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$4700(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$4200(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$4200(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$4800(Lcom/android/systemui/volume/VolumePanel;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I
    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->access$1200(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/16 v2, 0x11

    # invokes: Lcom/android/systemui/volume/VolumePanel;->setStreamVolume(Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V
    invoke-static {v1, v0, v4, v2}, Lcom/android/systemui/volume/VolumePanel;->access$4000(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$1300(Lcom/android/systemui/volume/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$4200(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(I)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->mIsZenAtNextKey:Z

    goto :goto_0
.end method

.method private onVolumeUpReleased()V
    .locals 0

    return-void
.end method

.method private postVolumeDownPressed()V
    .locals 2

    const/16 v1, 0xc8

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private postVolumeDownReleased()V
    .locals 2

    const/16 v1, 0xc9

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private postVolumeUpPressed()V
    .locals 2

    const/16 v1, 0xca

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private postVolumeUpReleased()V
    .locals 2

    const/16 v1, 0xcb

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private startExpandedVolumeSliders()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$2100(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/ZenModePanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/volume/ZenModePanel;->getVisibility()I

    move-result v1

    # setter for: Lcom/android/systemui/volume/VolumePanel;->restoreZenPanelVisibility:I
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->access$2002(Lcom/android/systemui/volume/VolumePanel;I)I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$2100(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/ZenModePanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/ZenModePanel;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1900(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mExpandedVolumeSliders:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1700(Lcom/android/systemui/volume/VolumePanel;)Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$1200(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->showPanel(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/volume/VolumePanel;->mExpandedVolumeSlidersShowing:Z
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->access$1802(Lcom/android/systemui/volume/VolumePanel;Z)Z

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/16 v1, 0x1388

    # setter for: Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->access$4402(Lcom/android/systemui/volume/VolumePanel;I)I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # invokes: Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$2200(Lcom/android/systemui/volume/VolumePanel;)V

    return-void
.end method

.method private toggleZenMode(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$4200(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$1300(Lcom/android/systemui/volume/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v4, :cond_1

    iput-boolean v4, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->mIsZenAtNextKey:Z

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->onVolumeDownPressed()V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->onVolumeDownReleased()V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$4200(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->access$4200(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getOldZen()I

    move-result v2

    or-int/2addr v1, v2

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # invokes: Lcom/android/systemui/volume/VolumePanel;->updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V
    invoke-static {v1, p1, v4}, Lcom/android/systemui/volume/VolumePanel;->access$5000(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    :cond_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->mIsZenAtNextKey:Z

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$1300(Lcom/android/systemui/volume/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget v2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->postVolumeChanged(II)V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->mIsZenAtNextKey:Z

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$4200(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$1300(Lcom/android/systemui/volume/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget v2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->postVolumeChanged(II)V

    goto :goto_0
.end method
