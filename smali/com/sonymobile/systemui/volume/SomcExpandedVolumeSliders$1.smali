.class Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$1;
.super Ljava/lang/Object;
.source "SomcExpandedVolumeSliders.java"

# interfaces
.implements Landroid/preference/SeekBarVolumizer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->createVolumeSliders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$1;->this$0:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuted(Z)V
    .locals 0

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$1;->this$0:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mCurrentPlayingSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;
    invoke-static {v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->access$200(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;)Landroid/preference/SeekBarVolumizer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$1;->this$0:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mCurrentPlayingSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;
    invoke-static {v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->access$200(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;)Landroid/preference/SeekBarVolumizer;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$1;->this$0:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mCurrentPlayingSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;
    invoke-static {v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->access$200(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;)Landroid/preference/SeekBarVolumizer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$1;->this$0:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;

    # setter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mCurrentPlayingSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;
    invoke-static {v0, p1}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->access$202(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer;

    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$1;->this$0:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mCurrentPlayingSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;
    invoke-static {v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->access$200(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;)Landroid/preference/SeekBarVolumizer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$1;->this$0:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mHandler:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$SoundHandler;
    invoke-static {v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->access$300(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;)Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$SoundHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$SoundHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$1;->this$0:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mHandler:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$SoundHandler;
    invoke-static {v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->access$300(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;)Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$SoundHandler;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$SoundHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method
