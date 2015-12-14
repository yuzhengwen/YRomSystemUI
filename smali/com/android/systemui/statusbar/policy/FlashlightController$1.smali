.class Lcom/android/systemui/statusbar/policy/FlashlightController$1;
.super Ljava/lang/Object;
.source "FlashlightController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/FlashlightController;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    # invokes: Lcom/android/systemui/statusbar/policy/FlashlightController;->getCameraId()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$100(Lcom/android/systemui/statusbar/policy/FlashlightController;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraId:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$002(Lcom/android/systemui/statusbar/policy/FlashlightController;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    # getter for: Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraId:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$000(Lcom/android/systemui/statusbar/policy/FlashlightController;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    # getter for: Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$400(Lcom/android/systemui/statusbar/policy/FlashlightController;)Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    # getter for: Lcom/android/systemui/statusbar/policy/FlashlightController;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$200(Lcom/android/systemui/statusbar/policy/FlashlightController;)Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    # getter for: Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$300(Lcom/android/systemui/statusbar/policy/FlashlightController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FlashlightController"

    const-string v2, "Couldn\'t initialize."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
