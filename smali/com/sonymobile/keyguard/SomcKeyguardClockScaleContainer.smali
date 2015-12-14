.class public Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;
.super Landroid/widget/FrameLayout;
.source "SomcKeyguardClockScaleContainer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field private mAnimateScaling:Z

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mHeightChange:I

.field private mPivotXViewStart:Z

.field private mPreviousScale:F

.field private mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPivotXViewStart:Z

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimateScaling:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPreviousScale:F

    return-void
.end method

.method private performAnimatedScaling(FI)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v5, [F

    aput p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v5, [F

    aput p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v4, p2

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private performNonAnimatedScaling(F)V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    invoke-interface {v0, p1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;->onScalingStarted(F)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setScaleX(F)V

    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setScaleY(F)V

    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    invoke-interface {v0, p1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;->onScalingFinished(F)V

    :cond_1
    return-void
.end method

.method private resizeClockAnimation(IIII)V
    .locals 6

    add-int v1, p2, p4

    int-to-float v1, v1

    int-to-float v2, p2

    div-float v0, v1, v2

    iget v1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPreviousScale:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPreviousScale:F

    iget-object v1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-boolean v1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPivotXViewStart:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    int-to-float v1, p1

    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setPivotX(F)V

    :goto_1
    int-to-float v1, p2

    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setPivotY(F)V

    iget-boolean v1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimateScaling:Z

    if-eqz v1, :cond_4

    invoke-direct {p0, v0, p3}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->performAnimatedScaling(FI)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setPivotX(F)V

    goto :goto_1

    :cond_3
    int-to-float v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setPivotX(F)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->performNonAnimatedScaling(F)V

    goto :goto_0
.end method

.method private updateHeightChange(I)V
    .locals 1

    iget v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    iget v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getHeightChange()I
    .locals 1

    iget v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    iget v1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPreviousScale:F

    invoke-interface {v0, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;->onScalingCancelled(F)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    iget v1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPreviousScale:F

    invoke-interface {v0, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;->onScalingFinished(F)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    iget v1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPreviousScale:F

    invoke-interface {v0, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;->onScalingStarted(F)V

    :cond_0
    return-void
.end method

.method public requestHeightChange(II)I
    .locals 3

    if-ltz p1, :cond_0

    iget v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->getMeasuredHeight()I

    move-result v0

    if-lez v1, :cond_1

    if-lez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->updateHeightChange(I)V

    iget v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    invoke-direct {p0, v1, v0, p2, v2}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->resizeClockAnimation(IIII)V

    :cond_1
    iget v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    goto :goto_0
.end method

.method public setAnimateScaling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimateScaling:Z

    return-void
.end method

.method public setPivotXViewStart(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPivotXViewStart:Z

    return-void
.end method

.method public setSomcKeyguardClockScaleContainerCallback(Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    return-void
.end method
