.class public Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;
.super Ljava/lang/Object;
.source "DragDropLayout.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/qs/DragDropLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ViewGroupDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v1, v2

    :goto_0
    :pswitch_1
    return v1

    :pswitch_2
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mHoverView:Landroid/view/View;
    invoke-static {v3}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$1500(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;
    invoke-static {v2}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$600(Lcom/sonymobile/systemui/qs/DragDropLayout;)Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    iget-object v3, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;
    invoke-static {v3}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$600(Lcom/sonymobile/systemui/qs/DragDropLayout;)Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;
    invoke-static {v4}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$600(Lcom/sonymobile/systemui/qs/DragDropLayout;)Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/systemui/qs/QSEditPanel;->getVirtualDropIndex(FF)I

    move-result v4

    # invokes: Lcom/sonymobile/systemui/qs/DragDropLayout;->finishDrag(Landroid/view/ViewGroup;I)V
    invoke-static {v2, v3, v4}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$1600(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/ViewGroup;I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    iget-object v3, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$800(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/widget/LinearLayout;

    move-result-object v3

    const v4, 0x7fffffff

    # invokes: Lcom/sonymobile/systemui/qs/DragDropLayout;->finishDrag(Landroid/view/ViewGroup;I)V
    invoke-static {v2, v3, v4}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$1600(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/ViewGroup;I)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
