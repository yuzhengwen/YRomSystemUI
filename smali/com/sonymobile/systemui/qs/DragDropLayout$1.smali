.class Lcom/sonymobile/systemui/qs/DragDropLayout$1;
.super Ljava/lang/Object;
.source "DragDropLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/qs/DragDropLayout;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$1;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$1;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mHScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$000(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$1;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mHScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$000(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$1;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileWidth:I
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$100(Lcom/sonymobile/systemui/qs/DragDropLayout;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$1;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mVScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$200(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$1;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mVScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$200(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/widget/ScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$1;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileHeight:I
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$300(Lcom/sonymobile/systemui/qs/DragDropLayout;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    :cond_1
    return-void
.end method
