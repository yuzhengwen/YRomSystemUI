.class Lcom/sonymobile/systemui/qs/DragDropLayout$4;
.super Ljava/lang/Object;
.source "DragDropLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/qs/DragDropLayout;->finishDrag(Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

.field final synthetic val$index:I

.field final synthetic val$targetViewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/ViewGroup;I)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    iput-object p2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->val$targetViewGroup:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # invokes: Lcom/sonymobile/systemui/qs/DragDropLayout;->removeDropRegions()V
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$2000(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mHoverView:Landroid/view/View;
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$1500(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mHoverView:Landroid/view/View;
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$1500(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->val$targetViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$800(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mHoverView:Landroid/view/View;
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$1500(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/sonymobile/systemui/qs/DragDropLayout;->setTileLinearParams(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$900(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/View;)V

    :goto_0
    iget v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->val$index:I

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->val$targetViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->val$targetViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mHoverView:Landroid/view/View;
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$1500(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mHoverView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$1502(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/View;)Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # invokes: Lcom/sonymobile/systemui/qs/DragDropLayout;->updateTilesIndices()V
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$1000(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$600(Lcom/sonymobile/systemui/qs/DragDropLayout;)Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/systemui/qs/QSEditPanel;->requestLayout()V

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedTiles:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$2100(Lcom/sonymobile/systemui/qs/DragDropLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->setTiles(Landroid/content/Context;Ljava/util/List;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mHoverView:Landroid/view/View;
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$1500(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/sonymobile/systemui/qs/DragDropLayout;->setTileGridParams(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$500(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->val$targetViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mHoverView:Landroid/view/View;
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$1500(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;->val$index:I

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1
.end method
