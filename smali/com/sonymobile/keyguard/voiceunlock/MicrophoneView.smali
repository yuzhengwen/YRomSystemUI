.class public Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;
.super Landroid/widget/FrameLayout;
.source "MicrophoneView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$1;,
        Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;,
        Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;
    }
.end annotation


# instance fields
.field private mMic:Landroid/widget/FrameLayout;

.field private mMicImage:Landroid/widget/ImageView;

.field private mWaveAnimator:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget v0, Lcom/android/keyguard/R$id;->mic:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->mMic:Landroid/widget/FrameLayout;

    sget v0, Lcom/android/keyguard/R$id;->mic_image:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->mMicImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;

    sget v0, Lcom/android/keyguard/R$id;->wave:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;-><init>(Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->mWaveAnimator:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;

    return-void
.end method

.method public setAmplitude(F)V
    .locals 6

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->mMic:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->mWaveAnimator:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->mWaveAnimator:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->getHeight()I

    move-result v3

    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->mMic:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->mMic:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->updateAnimation(FIIII)V

    :cond_0
    return-void
.end method

.method public setRecordMode(Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$1;->$SwitchMap$com$sonymobile$keyguard$voiceunlock$MicrophoneView$MicrophoneModes:[I

    invoke-virtual {p1}, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->mMic:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/keyguard/R$drawable;->somc_voice_unlock_mic_off_passive:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->mMicImage:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->somc_ic_mic_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {p0, v2}, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->setAmplitude(F)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->mMic:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/keyguard/R$drawable;->somc_voice_unlock_mic_off_passive:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->mMicImage:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->somc_ic_mic_passive:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {p0, v2}, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->setAmplitude(F)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->mMic:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/keyguard/R$drawable;->somc_voice_unlock_mic_active:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->mMicImage:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->somc_ic_mic_active:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
