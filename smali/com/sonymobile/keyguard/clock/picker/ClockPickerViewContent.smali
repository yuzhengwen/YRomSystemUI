.class public Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;
.super Landroid/widget/FrameLayout;
.source "ClockPickerViewContent.java"


# instance fields
.field private mScaleLevel:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;->mScaleLevel:F

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;->getPaddingEnd()I

    move-result v2

    add-int v0, v1, v2

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    int-to-float v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;->mScaleLevel:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;->setMeasuredDimension(II)V

    return-void
.end method

.method public setScaleLevel(F)V
    .locals 0

    iput p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerViewContent;->mScaleLevel:F

    return-void
.end method
