.class public Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;
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
    name = "EmptyDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-virtual {v2}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # invokes: Lcom/sonymobile/systemui/qs/DragDropLayout;->enableLayoutTransitions()V
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$1300(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    move v1, v3

    goto :goto_0

    :pswitch_2
    move v1, v3

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # invokes: Lcom/sonymobile/systemui/qs/DragDropLayout;->postRemoveDropRegions()V
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$1400(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    move v1, v3

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mHoverView:Landroid/view/View;
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$1500(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # invokes: Lcom/sonymobile/systemui/qs/DragDropLayout;->updateTilesIndices()V
    invoke-static {v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$1000(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    iget-object v4, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    invoke-virtual {v2}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->getIndex()I

    move-result v2

    # invokes: Lcom/sonymobile/systemui/qs/DragDropLayout;->finishDrag(Landroid/view/ViewGroup;I)V
    invoke-static {v4, v1, v2}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$1600(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/ViewGroup;I)V

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
