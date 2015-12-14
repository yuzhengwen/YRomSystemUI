.class Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$1;
.super Ljava/lang/Object;
.source "ClockPickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$1;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$1;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$1;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    # getter for: Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->mClocksContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->access$000(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    # invokes: Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->selectPage(I)V
    invoke-static {v0, v1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->access$100(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;I)V

    return-void
.end method
