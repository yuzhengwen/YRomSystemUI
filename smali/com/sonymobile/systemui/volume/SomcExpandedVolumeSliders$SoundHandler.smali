.class final Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$SoundHandler;
.super Landroid/os/Handler;
.source "SomcExpandedVolumeSliders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SoundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;


# direct methods
.method private constructor <init>(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;)V
    .locals 1

    iput-object p1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$SoundHandler;->this$0:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$SoundHandler;-><init>(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$SoundHandler;->this$0:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mCurrentPlayingSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;
    invoke-static {v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->access$200(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;)Landroid/preference/SeekBarVolumizer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$SoundHandler;->this$0:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;

    # getter for: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->mCurrentPlayingSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;
    invoke-static {v0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->access$200(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;)Landroid/preference/SeekBarVolumizer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
