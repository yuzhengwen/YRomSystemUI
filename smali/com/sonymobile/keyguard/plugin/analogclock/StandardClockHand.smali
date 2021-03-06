.class public Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;
.super Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;
.source "StandardClockHand.java"


# instance fields
.field private final mCenterSizeResourceId:I

.field protected mLength:F

.field private final mLengthId:I

.field protected mOffsetRadius:F

.field private final mThicknessId:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 2

    invoke-direct {p0, p4}, Lcom/sonymobile/keyguard/plugin/analogclock/ClockPart;-><init>(I)V

    iput p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->mCenterSizeResourceId:I

    iput p2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->mLengthId:I

    iput p3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->mThicknessId:I

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;FFFFFF)V
    .locals 9

    iget v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->mOffsetRadius:F

    iget v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->mLength:F

    add-float v6, v0, v1

    mul-float v0, v6, p2

    add-float/2addr v0, p6

    float-to-int v7, v0

    mul-float v0, v6, p3

    add-float v0, v0, p7

    float-to-int v8, v0

    int-to-float v3, v7

    int-to-float v4, v8

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    move v1, p4

    move v2, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public applyAttributes(Landroid/content/res/TypedArray;)V
    .locals 3

    const/high16 v2, 0x42c80000    # 100.0f

    iget v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->mLengthId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->mLength:F

    iget v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->mCenterSizeResourceId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->mOffsetRadius:F

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->mThicknessId:I

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->getColorResourceId()I

    move-result v1

    const v2, -0xff0001

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;FF)V
    .locals 9

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->getRotation()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v2, v0

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->getRotation()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    neg-float v3, v0

    iget v8, p0, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->mOffsetRadius:F

    mul-float v0, v8, v2

    float-to-int v0, v0

    int-to-float v0, v0

    add-float v4, p2, v0

    mul-float v0, v8, v3

    float-to-int v0, v0

    int-to-float v0, v0

    add-float v5, p3, v0

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->drawLine(Landroid/graphics/Canvas;FFFFFF)V

    return-void
.end method

.method public getLength()F
    .locals 1

    iget v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->mLength:F

    return v0
.end method
