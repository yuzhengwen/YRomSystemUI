.class Lcom/sonymobile/systemui/qs/DragDropLayout$2;
.super Ljava/lang/Object;
.source "DragDropLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/qs/DragDropLayout;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

.field final synthetic val$index:I

.field final synthetic val$qsid:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/qs/DragDropLayout;Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    iput-object p2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->val$qsid:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    iput p3, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->val$index:I

    iput-object p4, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->val$qsid:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->getStatus()Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->USED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedEmptyView:Landroid/view/View;
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$400(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/sonymobile/systemui/qs/DragDropLayout;->setTileGridParams(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$500(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedEmptyView:Landroid/view/View;
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$400(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->val$index:I

    invoke-direct {v1, v2}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$600(Lcom/sonymobile/systemui/qs/DragDropLayout;)Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedEmptyView:Landroid/view/View;
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$400(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->val$index:I

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/systemui/qs/QSEditPanel;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$600(Lcom/sonymobile/systemui/qs/DragDropLayout;)Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$800(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedEmptyView:Landroid/view/View;
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$700(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # invokes: Lcom/sonymobile/systemui/qs/DragDropLayout;->updateTilesIndices()V
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$1000(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedEmptyView:Landroid/view/View;
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$700(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/sonymobile/systemui/qs/DragDropLayout;->setTileLinearParams(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$900(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedEmptyView:Landroid/view/View;
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$700(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->val$index:I

    invoke-direct {v1, v2}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$800(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedEmptyView:Landroid/view/View;
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$700(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->val$index:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$800(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$600(Lcom/sonymobile/systemui/qs/DragDropLayout;)Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$2;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedEmptyView:Landroid/view/View;
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$400(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
