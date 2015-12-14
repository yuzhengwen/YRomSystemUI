.class Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$1;
.super Ljava/lang/Object;
.source "ClockPickerController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->createClickDismissingView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$1;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$1;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->exitClockPicker(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;Z)V

    # invokes: Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->removeViewFromItsParent(Landroid/view/View;)V
    invoke-static {p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->access$000(Landroid/view/View;)V

    return-void
.end method
