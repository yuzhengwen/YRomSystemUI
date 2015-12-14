.class Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$4;
.super Ljava/lang/Object;
.source "ClockPickerController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->hideCurrentClock(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

.field final synthetic val$clockDisplay:Landroid/view/View;

.field final synthetic val$parentView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$4;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    iput-object p2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$4;->val$clockDisplay:Landroid/view/View;

    iput-object p3, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$4;->val$parentView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$4;->val$clockDisplay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$4;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    # getter for: Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;
    invoke-static {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->access$100(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$4;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$4;->val$clockDisplay:Landroid/view/View;

    iget-object v2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$4;->val$parentView:Landroid/view/ViewGroup;

    # invokes: Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->exchangeClockViewForPickerView(Landroid/view/View;Landroid/view/ViewGroup;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->access$500(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
