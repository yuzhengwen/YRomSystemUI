.class Lcom/sonymobile/systemui/qs/DragDropLayout$5;
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


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$5;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout$5;->this$0:Lcom/sonymobile/systemui/qs/DragDropLayout;

    # invokes: Lcom/sonymobile/systemui/qs/DragDropLayout;->removeDropRegions()V
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->access$2000(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    return-void
.end method
