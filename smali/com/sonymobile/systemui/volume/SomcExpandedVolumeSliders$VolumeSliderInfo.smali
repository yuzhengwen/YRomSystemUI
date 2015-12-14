.class Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;
.super Ljava/lang/Object;
.source "SomcExpandedVolumeSliders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeSliderInfo"
.end annotation


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

.field private mStreamId:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mImageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mSeekBar:Landroid/widget/SeekBar;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;)Landroid/preference/SeekBarVolumizer;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer;
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;)I
    .locals 1

    iget v0, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mStreamId:I

    return v0
.end method

.method static synthetic access$902(Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;I)I
    .locals 0

    iput p1, p0, Lcom/sonymobile/systemui/volume/SomcExpandedVolumeSliders$VolumeSliderInfo;->mStreamId:I

    return p1
.end method
