.class public final Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
.super Lcom/android/systemui/statusbar/phone/BarTransitions;
.source "NavigationBarTransitions.java"


# instance fields
.field private final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mButtonTransitionsRot0:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

.field private final mButtonTransitionsRot90:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

.field private mLightsOut:Z

.field private final mLightsOutListener:Landroid/view/View$OnTouchListener;

.field private mRequestedMode:I

.field private mVertical:Z

.field private final mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 10

    const v2, 0x7f0203e4

    const v3, 0x7f0203d4

    const v4, 0x7f0203e6

    const v5, 0x7f0203d5

    const v6, 0x7f0203e0

    const v7, 0x7f0203e2

    const v8, 0x7f0203d7

    const v9, 0x7f0203d6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/BarTransitions;-><init>(Landroid/view/View;IIIIIIII)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mButtonTransitionsRot0:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mButtonTransitionsRot90:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method private alphaForMode(I)F
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->isOpaque(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method private applyLightsOut(ZZZ)V
    .locals 12

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-nez p3, :cond_0

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOut:Z

    if-ne p1, v8, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOut:Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f100138

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f10013e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p1, :cond_1

    move v4, v7

    :goto_1
    if-eqz p1, :cond_2

    :goto_2
    if-nez p2, :cond_4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    move v2, v7

    goto :goto_2

    :cond_3
    move v5, v6

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_6

    const/16 v0, 0x2ee

    :goto_4
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    int-to-long v10, v0

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-ne v8, v6, :cond_5

    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-direct {v6, v7}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    if-eqz p1, :cond_7

    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0xfa

    goto :goto_4

    :cond_7
    new-instance v5, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;

    invoke-direct {v5, p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;Landroid/view/View;)V

    goto :goto_5
.end method

.method private applyMode(IZZ)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->alphaForMode(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyBackButtonQuiescentAlpha(IZ)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->isLightsOut(I)Z

    move-result v1

    invoke-direct {p0, v1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZZ)V

    return-void
.end method

.method private static maxVisibleQuiescentAlpha(FLandroid/view/View;)F
    .locals 1

    instance-of v0, p1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getQuiescentAlpha()F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    :cond_0
    return p0
.end method

.method private setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V
    .locals 1

    instance-of v0, p1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setQuiescentAlpha(FZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public applyBackButtonQuiescentAlpha(IZ)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->maxVisibleQuiescentAlpha(FLandroid/view/View;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->maxVisibleQuiescentAlpha(FLandroid/view/View;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->maxVisibleQuiescentAlpha(FLandroid/view/View;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->maxVisibleQuiescentAlpha(FLandroid/view/View;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V

    :cond_0
    return-void
.end method

.method public finishAnimations()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mButtonTransitionsRot0:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->finishAnimations()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mButtonTransitionsRot90:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->finishAnimations()V

    return-void
.end method

.method public getButtonTransitionsRot0()Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mButtonTransitionsRot0:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

    return-object v0
.end method

.method public getButtonTransitionsRot90()Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mButtonTransitionsRot90:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

    return-object v0
.end method

.method public init(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setVertical(Z)V

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getMode()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyModeBackground(IIZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getMode()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyMode(IZZ)V

    return-void
.end method

.method protected onTransition(IIZ)V
    .locals 5

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->onTransition(IIZ)V

    invoke-direct {p0, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyMode(IZZ)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->isLightsOut(I)Z

    move-result v2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->isLightsOut(I)Z

    move-result v1

    if-eqz p3, :cond_0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    const/16 v0, 0xc8

    :cond_0
    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mButtonTransitionsRot0:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getBackgroundLayer(I)I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->startTransitions(II)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mButtonTransitionsRot90:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getBackgroundLayer(I)I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->startTransitions(II)V

    :cond_1
    return-void
.end method

.method public setVertical(Z)V
    .locals 9

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mVertical:Z

    if-eqz p1, :cond_0

    const v1, 0x7f0203e5

    const v2, 0x7f0203d8

    const v3, 0x7f0203e7

    const v4, 0x7f0203d9

    const v5, 0x7f0203e1

    const v6, 0x7f0203e3

    const v7, 0x7f0203db

    const v8, 0x7f0203da

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setResourceIds(IIIIIIII)V

    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mRequestedMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->transitionTo(IZ)V

    return-void

    :cond_0
    const v1, 0x7f0203e4

    const v2, 0x7f0203d4

    const v3, 0x7f0203e6

    const v4, 0x7f0203d5

    const v5, 0x7f0203e0

    const v6, 0x7f0203e2

    const v7, 0x7f0203d7

    const v8, 0x7f0203d6

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setResourceIds(IIIIIIII)V

    goto :goto_0
.end method

.method public transitionTo(IZ)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mRequestedMode:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mVertical:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    return-void

    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    goto :goto_0
.end method

.method public updateResources()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mVertical:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setVertical(Z)V

    return-void
.end method
