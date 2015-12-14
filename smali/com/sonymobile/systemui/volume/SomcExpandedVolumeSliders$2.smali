.class Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$2;
.super Landroid/preference/SeekBarVolumizer;
.source "SomcExpandedVolumeSliders.java"


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
.method constructor <init>(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$2;->this$0:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/preference/SeekBarVolumizer;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$2;->this$0:Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;

    # invokes: Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->seekBarChangeUpdateIcons(Landroid/widget/SeekBar;I)V
    invoke-static {v0, p1, p2}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;->access$800(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;Landroid/widget/SeekBar;I)V

    return-void
.end method
