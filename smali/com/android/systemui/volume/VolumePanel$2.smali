.class Lcom/android/systemui/volume/VolumePanel$2;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$2;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$2;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/4 v1, -0x1

    # setter for: Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->access$1202(Lcom/android/systemui/volume/VolumePanel;I)I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$2;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1300(Lcom/android/systemui/volume/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$2;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$1200(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$2;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # invokes: Lcom/android/systemui/volume/VolumePanel;->setZenPanelVisible(Z)V
    invoke-static {v0, v2}, Lcom/android/systemui/volume/VolumePanel;->access$1400(Lcom/android/systemui/volume/VolumePanel;Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$2;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # setter for: Lcom/android/systemui/volume/VolumePanel;->mDemoIcon:I
    invoke-static {v0, v2}, Lcom/android/systemui/volume/VolumePanel;->access$1502(Lcom/android/systemui/volume/VolumePanel;I)I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$2;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mSecondaryIconTransition:Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1600(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$2;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mExpandedVolumeSliders:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1700(Lcom/android/systemui/volume/VolumePanel;)Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->hidePanel()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$2;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # setter for: Lcom/android/systemui/volume/VolumePanel;->mExpandedVolumeSlidersShowing:Z
    invoke-static {v0, v2}, Lcom/android/systemui/volume/VolumePanel;->access$1802(Lcom/android/systemui/volume/VolumePanel;Z)Z

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$2;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1900(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$2;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$2100(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/ZenModePanel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$2;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->restoreZenPanelVisibility:I
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$2000(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setVisibility(I)V

    return-void
.end method
