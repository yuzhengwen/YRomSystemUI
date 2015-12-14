.class Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;
.super Landroid/view/View$DragShadowBuilder;
.source "DragDropLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/qs/DragDropLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragShadow"
.end annotation


# instance fields
.field private mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mHeight:I

.field private mWidth:I

.field final synthetic this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;


# direct methods
.method public constructor <init>(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-direct {p0, p3}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->mWidth:I

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->mHeight:I

    invoke-direct {p0, p3}, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->createBitmapDrawable(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method private createBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v4, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-virtual {v4}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090045

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v4, -0x777778

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private createBitmapDrawable(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->createBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->mWidth:I

    iget v3, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->mHeight:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    return-object v1
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2

    iget v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->mWidth:I

    iget v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->mHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$1100(Lcom/sonymobile/systemui/qs/DragDropLayout;)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mY:F
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$1200(Lcom/sonymobile/systemui/qs/DragDropLayout;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
