.class public Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;
.super Ljava/lang/Object;
.source "HorizontalScalingText.java"


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mPaint:Landroid/graphics/Paint;

.field private mSize:F

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mSize:F

    const-string v0, ""

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mText:Ljava/lang/String;

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public static createTextPaint()Landroid/graphics/Paint;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object v0
.end method

.method private getScaleFactor(FF)F
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3e19999a    # 0.15f

    const/4 v3, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v3

    if-lez v2, :cond_0

    cmpl-float v2, p2, v3

    if-lez v2, :cond_0

    div-float v1, p1, p2

    sub-float v0, v1, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v2, v4

    add-float v1, v5, v2

    :cond_0
    return v1
.end method


# virtual methods
.method public drawTextScaledToWidth(Landroid/graphics/Canvas;FFF)V
    .locals 4

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v2, v0

    invoke-direct {p0, p4, v2}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getScaleFactor(FF)F

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mSize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p2, p3, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getBottom()I
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getBoundsReadOnly()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getLeft()I
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public measureTextBounds()V
    .locals 5

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mText:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mText:Ljava/lang/String;

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->mSize:F

    return-void
.end method
