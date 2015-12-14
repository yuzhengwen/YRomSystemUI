.class public Lcom/sonymobile/systemui/qs/DragDropLayout$TileDragListener;
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
    name = "TileDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$TileDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x0

    :cond_0
    :goto_0
    :pswitch_1
    return v1

    :pswitch_2
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$TileDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mIsAnimating:Z
    invoke-static {v2}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$1700(Lcom/sonymobile/systemui/qs/DragDropLayout;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$TileDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # getter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedLT:Landroid/animation/LayoutTransition;
    invoke-static {v2}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$1800(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$TileDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # setter for: Lcom/sonymobile/systemui/qs/DragDropLayout;->mIsAnimating:Z
    invoke-static {v2, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$1702(Lcom/sonymobile/systemui/qs/DragDropLayout;Z)Z

    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$TileDragListener;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # invokes: Lcom/sonymobile/systemui/qs/DragDropLayout;->updateDropRegion(Landroid/view/View;)V
    invoke-static {v2, p1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$1900(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
