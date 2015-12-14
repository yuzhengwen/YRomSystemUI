.class Lcom/sonymobile/systemui/qs/DragDropLayout$7;
.super Ljava/lang/Object;
.source "DragDropLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/qs/DragDropLayout;->postRemoveDropRegions()V
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

    iput-object p1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$7;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$7;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedEmptyView:Landroid/view/View;
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$400(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$7;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$600(Lcom/sonymobile/systemui/qs/DragDropLayout;)Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$7;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedEmptyView:Landroid/view/View;
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$400(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$7;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedEmptyView:Landroid/view/View;
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$700(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$7;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$800(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$7;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedEmptyView:Landroid/view/View;
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$700(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method
