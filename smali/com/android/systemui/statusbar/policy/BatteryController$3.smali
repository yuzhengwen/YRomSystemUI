.class Lcom/android/systemui/statusbar/policy/BatteryController$3;
.super Landroid/database/ContentObserver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController$3;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$3;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController$3;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    # invokes: Lcom/android/systemui/statusbar/policy/BatteryController;->getStaminaBatteryThreshold()I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$600(Lcom/android/systemui/statusbar/policy/BatteryController;)I

    move-result v1

    # setter for: Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaThreshold:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$502(Lcom/android/systemui/statusbar/policy/BatteryController;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$3;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    # invokes: Lcom/android/systemui/statusbar/policy/BatteryController;->updateView()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$200(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    return-void
.end method
