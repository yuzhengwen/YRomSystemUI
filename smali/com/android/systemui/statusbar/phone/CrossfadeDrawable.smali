.class public Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "CrossfadeDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private mCurLayer:I

.field private mDuration:I

.field private mNewLayer:I

.field private mNewLayerAlpha:I

.field private mOldLayer:I

.field private mReverse:Z

.field private mStartTimeMillis:J

.field private mTransitionState:I


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mTransitionState:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mNewLayerAlpha:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setPaddingMode(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    const/16 v9, 0xff

    const/4 v8, 0x2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mTransitionState:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mNewLayerAlpha:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mTransitionState:I

    if-ne v3, v8, :cond_5

    iget v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mCurLayer:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    return-void

    :pswitch_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mDuration:I

    if-lez v3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mStartTimeMillis:J

    const/4 v3, 0x1

    iput v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mTransitionState:I

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mNewLayer:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mCurLayer:I

    iput v8, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mTransitionState:I

    goto :goto_0

    :pswitch_1
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mStartTimeMillis:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mDuration:I

    if-lez v3, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mStartTimeMillis:J

    sub-long/2addr v4, v6

    long-to-float v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mDuration:I

    int-to-float v4, v4

    div-float v2, v3, v4

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mNewLayer:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mCurLayer:I

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    iput v8, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mTransitionState:I

    :cond_3
    const/4 v3, 0x0

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mNewLayerAlpha:I

    goto :goto_0

    :cond_4
    iput v8, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mTransitionState:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mNewLayerAlpha:I

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mOldLayer:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    rsub-int v3, v0, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    if-lez v0, :cond_6

    iget v3, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mNewLayer:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->invalidateSelf()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public finishAnimation()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mTransitionState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mNewLayer:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setLayer(I)V

    :cond_0
    return-void
.end method

.method public resetTransition()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setLayer(I)V

    return-void
.end method

.method public setLayer(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mNewLayerAlpha:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mCurLayer:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mTransitionState:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->invalidateSelf()V

    return-void
.end method

.method public startTransition(II)V
    .locals 2

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->getNumberOfLayers()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mCurLayer:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mCurLayer:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mOldLayer:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mNewLayer:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mNewLayerAlpha:I

    iput p2, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mDuration:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mReverse:Z

    iput v1, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mTransitionState:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->invalidateSelf()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->mTransitionState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CrossfadeDrawable;->setLayer(I)V

    goto :goto_0
.end method
