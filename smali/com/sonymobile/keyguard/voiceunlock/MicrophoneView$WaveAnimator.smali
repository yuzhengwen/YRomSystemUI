.class Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;
.super Ljava/lang/Object;
.source "MicrophoneView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WaveAnimator"
.end annotation


# instance fields
.field private mAmplitude:F

.field private mAmplitudeIndex:I

.field private mAmplitudes:[F

.field private mAnimX:Landroid/animation/ObjectAnimator;

.field private mAnimY:Landroid/animation/ObjectAnimator;

.field private mAvgAmplitude:F

.field private mMicHeight:I

.field private mMicWidth:I

.field private mRunning:Z

.field private mWave:Landroid/widget/ImageView;

.field private mWaveHeight:I

.field private mWaveWidth:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 3

    const/4 v2, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mAmplitudes:[F

    const-string v0, "scaleX"

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mAnimX:Landroid/animation/ObjectAnimator;

    const-string v0, "scaleY"

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mAnimY:Landroid/animation/ObjectAnimator;

    iput-object p1, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mWave:Landroid/widget/ImageView;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getNextAmplitude(F)F
    .locals 5

    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mAmplitudes:[F

    array-length v1, v3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mAmplitudes:[F

    iget v4, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mAmplitudeIndex:I

    aput p1, v3, v4

    iget v3, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mAmplitudeIndex:I

    add-int/lit8 v3, v3, 0x1

    rem-int/2addr v3, v1

    iput v3, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mAmplitudeIndex:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mAmplitudes:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    int-to-float v3, v1

    div-float v3, v2, v3

    return v3
.end method

.method private start()V
    .locals 14

    iget v7, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mAmplitude:F

    invoke-direct {p0, v7}, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->getNextAmplitude(F)F

    move-result v7

    iput v7, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mAvgAmplitude:F

    iget v6, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mWaveWidth:I

    iget v5, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mWaveHeight:I

    iget v4, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mMicWidth:I

    iget v3, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mMicHeight:I

    iget-object v7, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mAnimX:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iget-object v7, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mAnimY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    iget-object v7, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mWave:Landroid/widget/ImageView;

    const-string v8, "scaleX"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v11

    aput v11, v9, v10

    const/4 v10, 0x1

    int-to-float v11, v4

    iget v12, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mAvgAmplitude:F

    sub-int v13, v6, v4

    int-to-float v13, v13

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mAnimX:Landroid/animation/ObjectAnimator;

    iget-object v7, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mWave:Landroid/widget/ImageView;

    const-string v8, "scaleY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v11

    aput v11, v9, v10

    const/4 v10, 0x1

    int-to-float v11, v3

    iget v12, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mAvgAmplitude:F

    sub-int v13, v5, v3

    int-to-float v13, v13

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mAnimY:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mAnimX:Landroid/animation/ObjectAnimator;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mAnimY:Landroid/animation/ObjectAnimator;

    aput-object v9, v7, v8

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v8, 0x32

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mRunning:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->start()V

    :cond_0
    iget v0, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mAvgAmplitude:F

    const v1, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mRunning:Z

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public updateAnimation(FIIII)V
    .locals 1

    iput p1, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mAmplitude:F

    iput p2, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mWaveWidth:I

    iput p3, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mWaveHeight:I

    iput p4, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mMicWidth:I

    iput p5, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mMicHeight:I

    iget-boolean v0, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mRunning:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mWaveWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mWaveHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mMicWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mMicHeight:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->mRunning:Z

    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$WaveAnimator;->start()V

    :cond_0
    return-void
.end method
