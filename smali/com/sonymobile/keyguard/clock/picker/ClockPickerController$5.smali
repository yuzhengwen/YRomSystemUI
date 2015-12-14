.class Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;
.super Ljava/lang/Object;
.source "ClockPickerController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->exchangeClockViewForPickerView(Landroid/view/View;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

.field final synthetic val$parentView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    iput-object p2, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->val$parentView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->val$parentView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    # getter for: Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;
    invoke-static {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->access$100(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    # getter for: Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;
    invoke-static {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->access$100(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->createSelectionTimeoutForSelectedPage()V

    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    # getter for: Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;
    invoke-static {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->access$100(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->enableScaleContainerScaling()V

    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    # getter for: Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mDismissView:Landroid/view/View;
    invoke-static {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->access$600(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    iget-object v0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController$5;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    # getter for: Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->mClockPicker:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;
    invoke-static {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->access$100(Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->resizeDismissView(Landroid/view/View;)V

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
