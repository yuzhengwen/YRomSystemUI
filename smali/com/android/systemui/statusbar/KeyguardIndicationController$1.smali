.class Lcom/android/systemui/statusbar/KeyguardIndicationController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardIndicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 3

    iget v1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v2

    # setter for: Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$002(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    # invokes: Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
